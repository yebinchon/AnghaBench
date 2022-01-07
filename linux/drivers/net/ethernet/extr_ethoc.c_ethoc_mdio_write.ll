; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_ethoc.c_ethoc_mdio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_ethoc.c_ethoc_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.ethoc* }
%struct.ethoc = type { i32 }

@MIIADDRESS = common dso_local global i32 0, align 4
@MIITX_DATA = common dso_local global i32 0, align 4
@MIICOMMAND = common dso_local global i32 0, align 4
@MIICOMMAND_WRITE = common dso_local global i32 0, align 4
@MIISTATUS = common dso_local global i32 0, align 4
@MIISTATUS_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32, i32)* @ethoc_mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethoc_mdio_write(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ethoc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %14 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %13, i32 0, i32 0
  %15 = load %struct.ethoc*, %struct.ethoc** %14, align 8
  store %struct.ethoc* %15, %struct.ethoc** %10, align 8
  %16 = load %struct.ethoc*, %struct.ethoc** %10, align 8
  %17 = load i32, i32* @MIIADDRESS, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @MIIADDRESS_ADDR(i32 %18, i32 %19)
  %21 = call i32 @ethoc_write(%struct.ethoc* %16, i32 %17, i32 %20)
  %22 = load %struct.ethoc*, %struct.ethoc** %10, align 8
  %23 = load i32, i32* @MIITX_DATA, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @ethoc_write(%struct.ethoc* %22, i32 %23, i32 %24)
  %26 = load %struct.ethoc*, %struct.ethoc** %10, align 8
  %27 = load i32, i32* @MIICOMMAND, align 4
  %28 = load i32, i32* @MIICOMMAND_WRITE, align 4
  %29 = call i32 @ethoc_write(%struct.ethoc* %26, i32 %27, i32 %28)
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %47, %4
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 5
  br i1 %32, label %33, label %50

33:                                               ; preds = %30
  %34 = load %struct.ethoc*, %struct.ethoc** %10, align 8
  %35 = load i32, i32* @MIISTATUS, align 4
  %36 = call i32 @ethoc_read(%struct.ethoc* %34, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @MIISTATUS_BUSY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %33
  %42 = load %struct.ethoc*, %struct.ethoc** %10, align 8
  %43 = load i32, i32* @MIICOMMAND, align 4
  %44 = call i32 @ethoc_write(%struct.ethoc* %42, i32 %43, i32 0)
  store i32 0, i32* %5, align 4
  br label %53

45:                                               ; preds = %33
  %46 = call i32 @usleep_range(i32 100, i32 200)
  br label %47

47:                                               ; preds = %45
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %30

50:                                               ; preds = %30
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %50, %41
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @ethoc_write(%struct.ethoc*, i32, i32) #1

declare dso_local i32 @MIIADDRESS_ADDR(i32, i32) #1

declare dso_local i32 @ethoc_read(%struct.ethoc*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
