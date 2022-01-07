; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_micrel.c_ksz9021_load_values_from_of.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_micrel.c_ksz9021_load_values_from_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }
%struct.device_node = type { i32 }

@PS_TO_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, %struct.device_node*, i32, i8*, i8*, i8*, i8*)* @ksz9021_load_values_from_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksz9021_load_values_from_of(%struct.phy_device* %0, %struct.device_node* %1, i32 %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.phy_device*, align 8
  %10 = alloca %struct.device_node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %9, align 8
  store %struct.device_node* %1, %struct.device_node** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32 -1, i32* %16, align 4
  store i32 -2, i32* %17, align 4
  store i32 -3, i32* %18, align 4
  store i32 -4, i32* %19, align 4
  store i32 0, i32* %21, align 4
  %22 = load %struct.device_node*, %struct.device_node** %10, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = call i32 @of_property_read_u32(%struct.device_node* %22, i8* %23, i32* %16)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %7
  %27 = load i32, i32* %21, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %21, align 4
  br label %29

29:                                               ; preds = %26, %7
  %30 = load %struct.device_node*, %struct.device_node** %10, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = call i32 @of_property_read_u32(%struct.device_node* %30, i8* %31, i32* %17)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %21, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %21, align 4
  br label %37

37:                                               ; preds = %34, %29
  %38 = load %struct.device_node*, %struct.device_node** %10, align 8
  %39 = load i8*, i8** %14, align 8
  %40 = call i32 @of_property_read_u32(%struct.device_node* %38, i8* %39, i32* %18)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %21, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %21, align 4
  br label %45

45:                                               ; preds = %42, %37
  %46 = load %struct.device_node*, %struct.device_node** %10, align 8
  %47 = load i8*, i8** %15, align 8
  %48 = call i32 @of_property_read_u32(%struct.device_node* %46, i8* %47, i32* %19)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %21, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %21, align 4
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i32, i32* %21, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  store i32 0, i32* %8, align 4
  br label %118

57:                                               ; preds = %53
  %58 = load i32, i32* %21, align 4
  %59 = icmp slt i32 %58, 4
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @kszphy_extended_read(%struct.phy_device* %61, i32 %62)
  store i32 %63, i32* %20, align 4
  br label %65

64:                                               ; preds = %57
  store i32 0, i32* %20, align 4
  br label %65

65:                                               ; preds = %64, %60
  %66 = load i32, i32* %16, align 4
  %67 = icmp ne i32 %66, -1
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load i32, i32* %20, align 4
  %70 = and i32 %69, 65520
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* @PS_TO_REG, align 4
  %73 = sdiv i32 %71, %72
  %74 = and i32 %73, 15
  %75 = shl i32 %74, 0
  %76 = or i32 %70, %75
  store i32 %76, i32* %20, align 4
  br label %77

77:                                               ; preds = %68, %65
  %78 = load i32, i32* %17, align 4
  %79 = icmp ne i32 %78, -2
  br i1 %79, label %80, label %89

80:                                               ; preds = %77
  %81 = load i32, i32* %20, align 4
  %82 = and i32 %81, 65295
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* @PS_TO_REG, align 4
  %85 = sdiv i32 %83, %84
  %86 = and i32 %85, 15
  %87 = shl i32 %86, 4
  %88 = or i32 %82, %87
  store i32 %88, i32* %20, align 4
  br label %89

89:                                               ; preds = %80, %77
  %90 = load i32, i32* %18, align 4
  %91 = icmp ne i32 %90, -3
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = load i32, i32* %20, align 4
  %94 = and i32 %93, 61695
  %95 = load i32, i32* %18, align 4
  %96 = load i32, i32* @PS_TO_REG, align 4
  %97 = sdiv i32 %95, %96
  %98 = and i32 %97, 15
  %99 = shl i32 %98, 8
  %100 = or i32 %94, %99
  store i32 %100, i32* %20, align 4
  br label %101

101:                                              ; preds = %92, %89
  %102 = load i32, i32* %19, align 4
  %103 = icmp ne i32 %102, -4
  br i1 %103, label %104, label %113

104:                                              ; preds = %101
  %105 = load i32, i32* %20, align 4
  %106 = and i32 %105, 4095
  %107 = load i32, i32* %19, align 4
  %108 = load i32, i32* @PS_TO_REG, align 4
  %109 = sdiv i32 %107, %108
  %110 = and i32 %109, 15
  %111 = shl i32 %110, 12
  %112 = or i32 %106, %111
  store i32 %112, i32* %20, align 4
  br label %113

113:                                              ; preds = %104, %101
  %114 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %20, align 4
  %117 = call i32 @kszphy_extended_write(%struct.phy_device* %114, i32 %115, i32 %116)
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %113, %56
  %119 = load i32, i32* %8, align 4
  ret i32 %119
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @kszphy_extended_read(%struct.phy_device*, i32) #1

declare dso_local i32 @kszphy_extended_write(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
