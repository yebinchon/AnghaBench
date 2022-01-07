; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303-core.c_lan9303_indirect_phy_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303-core.c_lan9303_indirect_phy_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan9303 = type { i32, i32 }

@LAN9303_PMI_ACCESS = common dso_local global i32 0, align 4
@LAN9303_PMI_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan9303*, i32, i32)* @lan9303_indirect_phy_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan9303_indirect_phy_read(%struct.lan9303* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lan9303*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lan9303* %0, %struct.lan9303** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @LAN9303_PMI_ACCESS_PHY_ADDR(i32 %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @LAN9303_PMI_ACCESS_MIIRINDA(i32 %12)
  %14 = load i32, i32* %9, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %9, align 4
  %16 = load %struct.lan9303*, %struct.lan9303** %5, align 8
  %17 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.lan9303*, %struct.lan9303** %5, align 8
  %20 = call i32 @lan9303_indirect_phy_wait_for_completion(%struct.lan9303* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %55

24:                                               ; preds = %3
  %25 = load %struct.lan9303*, %struct.lan9303** %5, align 8
  %26 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @LAN9303_PMI_ACCESS, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @regmap_write(i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %55

34:                                               ; preds = %24
  %35 = load %struct.lan9303*, %struct.lan9303** %5, align 8
  %36 = call i32 @lan9303_indirect_phy_wait_for_completion(%struct.lan9303* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %55

40:                                               ; preds = %34
  %41 = load %struct.lan9303*, %struct.lan9303** %5, align 8
  %42 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @LAN9303_PMI_DATA, align 4
  %45 = call i32 @lan9303_read(i32 %43, i32 %44, i32* %9)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %55

49:                                               ; preds = %40
  %50 = load %struct.lan9303*, %struct.lan9303** %5, align 8
  %51 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %53, 65535
  store i32 %54, i32* %4, align 4
  br label %60

55:                                               ; preds = %48, %39, %33, %23
  %56 = load %struct.lan9303*, %struct.lan9303** %5, align 8
  %57 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %55, %49
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @LAN9303_PMI_ACCESS_PHY_ADDR(i32) #1

declare dso_local i32 @LAN9303_PMI_ACCESS_MIIRINDA(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lan9303_indirect_phy_wait_for_completion(%struct.lan9303*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @lan9303_read(i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
