; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_of_phy_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_of_phy_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phylink = type { i64, i32, i32 }
%struct.device_node = type { i32 }
%struct.phy_device = type { i32 }

@MLO_AN_FIXED = common dso_local global i64 0, align 8
@MLO_AN_INBAND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"phy-device\00", align 1
@MLO_AN_PHY = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phylink_of_phy_connect(%struct.phylink* %0, %struct.device_node* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.phylink*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.phy_device*, align 8
  %10 = alloca i32, align 4
  store %struct.phylink* %0, %struct.phylink** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.phylink*, %struct.phylink** %5, align 8
  %12 = getelementptr inbounds %struct.phylink, %struct.phylink* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MLO_AN_FIXED, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %28, label %16

16:                                               ; preds = %3
  %17 = load %struct.phylink*, %struct.phylink** %5, align 8
  %18 = getelementptr inbounds %struct.phylink, %struct.phylink* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MLO_AN_INBAND, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.phylink*, %struct.phylink** %5, align 8
  %24 = getelementptr inbounds %struct.phylink, %struct.phylink* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @phy_interface_mode_is_8023z(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %3
  store i32 0, i32* %4, align 4
  br label %84

29:                                               ; preds = %22, %16
  %30 = load %struct.device_node*, %struct.device_node** %6, align 8
  %31 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %31, %struct.device_node** %8, align 8
  %32 = load %struct.device_node*, %struct.device_node** %8, align 8
  %33 = icmp ne %struct.device_node* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load %struct.device_node*, %struct.device_node** %6, align 8
  %36 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.device_node* %36, %struct.device_node** %8, align 8
  br label %37

37:                                               ; preds = %34, %29
  %38 = load %struct.device_node*, %struct.device_node** %8, align 8
  %39 = icmp ne %struct.device_node* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load %struct.device_node*, %struct.device_node** %6, align 8
  %42 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store %struct.device_node* %42, %struct.device_node** %8, align 8
  br label %43

43:                                               ; preds = %40, %37
  %44 = load %struct.device_node*, %struct.device_node** %8, align 8
  %45 = icmp ne %struct.device_node* %44, null
  br i1 %45, label %56, label %46

46:                                               ; preds = %43
  %47 = load %struct.phylink*, %struct.phylink** %5, align 8
  %48 = getelementptr inbounds %struct.phylink, %struct.phylink* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MLO_AN_PHY, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %84

55:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %84

56:                                               ; preds = %43
  %57 = load %struct.phylink*, %struct.phylink** %5, align 8
  %58 = getelementptr inbounds %struct.phylink, %struct.phylink* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.device_node*, %struct.device_node** %8, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.phylink*, %struct.phylink** %5, align 8
  %63 = getelementptr inbounds %struct.phylink, %struct.phylink* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call %struct.phy_device* @of_phy_attach(i32 %59, %struct.device_node* %60, i32 %61, i32 %64)
  store %struct.phy_device* %65, %struct.phy_device** %9, align 8
  %66 = load %struct.device_node*, %struct.device_node** %8, align 8
  %67 = call i32 @of_node_put(%struct.device_node* %66)
  %68 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %69 = icmp ne %struct.phy_device* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %56
  %71 = load i32, i32* @ENODEV, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %84

73:                                               ; preds = %56
  %74 = load %struct.phylink*, %struct.phylink** %5, align 8
  %75 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %76 = call i32 @phylink_bringup_phy(%struct.phylink* %74, %struct.phy_device* %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %81 = call i32 @phy_detach(%struct.phy_device* %80)
  br label %82

82:                                               ; preds = %79, %73
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %82, %70, %55, %52, %28
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i64 @phy_interface_mode_is_8023z(i32) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local %struct.phy_device* @of_phy_attach(i32, %struct.device_node*, i32, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @phylink_bringup_phy(%struct.phylink*, %struct.phy_device*) #1

declare dso_local i32 @phy_detach(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
