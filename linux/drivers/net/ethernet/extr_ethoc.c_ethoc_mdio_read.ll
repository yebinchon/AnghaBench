; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_ethoc.c_ethoc_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_ethoc.c_ethoc_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.ethoc* }
%struct.ethoc = type { i32 }

@MIIADDRESS = common dso_local global i32 0, align 4
@MIICOMMAND = common dso_local global i32 0, align 4
@MIICOMMAND_READ = common dso_local global i32 0, align 4
@MIISTATUS = common dso_local global i32 0, align 4
@MIISTATUS_BUSY = common dso_local global i32 0, align 4
@MIIRX_DATA = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @ethoc_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethoc_mdio_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ethoc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %13 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %12, i32 0, i32 0
  %14 = load %struct.ethoc*, %struct.ethoc** %13, align 8
  store %struct.ethoc* %14, %struct.ethoc** %8, align 8
  %15 = load %struct.ethoc*, %struct.ethoc** %8, align 8
  %16 = load i32, i32* @MIIADDRESS, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @MIIADDRESS_ADDR(i32 %17, i32 %18)
  %20 = call i32 @ethoc_write(%struct.ethoc* %15, i32 %16, i32 %19)
  %21 = load %struct.ethoc*, %struct.ethoc** %8, align 8
  %22 = load i32, i32* @MIICOMMAND, align 4
  %23 = load i32, i32* @MIICOMMAND_READ, align 4
  %24 = call i32 @ethoc_write(%struct.ethoc* %21, i32 %22, i32 %23)
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %46, %3
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 5
  br i1 %27, label %28, label %49

28:                                               ; preds = %25
  %29 = load %struct.ethoc*, %struct.ethoc** %8, align 8
  %30 = load i32, i32* @MIISTATUS, align 4
  %31 = call i32 @ethoc_read(%struct.ethoc* %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @MIISTATUS_BUSY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %28
  %37 = load %struct.ethoc*, %struct.ethoc** %8, align 8
  %38 = load i32, i32* @MIIRX_DATA, align 4
  %39 = call i32 @ethoc_read(%struct.ethoc* %37, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load %struct.ethoc*, %struct.ethoc** %8, align 8
  %41 = load i32, i32* @MIICOMMAND, align 4
  %42 = call i32 @ethoc_write(%struct.ethoc* %40, i32 %41, i32 0)
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %4, align 4
  br label %52

44:                                               ; preds = %28
  %45 = call i32 @usleep_range(i32 100, i32 200)
  br label %46

46:                                               ; preds = %44
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %25

49:                                               ; preds = %25
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %49, %36
  %53 = load i32, i32* %4, align 4
  ret i32 %53
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
