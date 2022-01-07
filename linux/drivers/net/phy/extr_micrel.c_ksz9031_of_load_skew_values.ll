; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_micrel.c_ksz9031_of_load_skew_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_micrel.c_ksz9031_of_load_skew_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }
%struct.device_node = type { i32 }

@__const.ksz9031_of_load_skew_values.val = private unnamed_addr constant [4 x i32] [i32 -1, i32 -2, i32 -3, i32 -4], align 16
@KSZ9031_PS_TO_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, %struct.device_node*, i64, i64, i8**, i32)* @ksz9031_of_load_skew_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksz9031_of_load_skew_values(%struct.phy_device* %0, %struct.device_node* %1, i64 %2, i64 %3, i8** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.phy_device*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca [4 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %8, align 8
  store %struct.device_node* %1, %struct.device_node** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i8** %4, i8*** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = bitcast [4 x i32]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 16 bitcast ([4 x i32]* @__const.ksz9031_of_load_skew_values.val to i8*), i64 16, i1 false)
  store i32 0, i32* %15, align 4
  store i32 0, i32* %19, align 4
  br label %21

21:                                               ; preds = %42, %6
  %22 = load i32, i32* %19, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %21
  %26 = load %struct.device_node*, %struct.device_node** %9, align 8
  %27 = load i8**, i8*** %12, align 8
  %28 = load i32, i32* %19, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %33 = load i32, i32* %19, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = call i32 @of_property_read_u32(%struct.device_node* %26, i8* %31, i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %25
  %39 = load i32, i32* %15, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %15, align 4
  br label %41

41:                                               ; preds = %38, %25
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %19, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %19, align 4
  br label %21

45:                                               ; preds = %21
  %46 = load i32, i32* %15, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store i32 0, i32* %7, align 4
  br label %113

49:                                               ; preds = %45
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %55 = load i64, i64* %10, align 8
  %56 = call i64 @phy_read_mmd(%struct.phy_device* %54, i32 2, i64 %55)
  store i64 %56, i64* %18, align 8
  br label %58

57:                                               ; preds = %49
  store i64 0, i64* %18, align 8
  br label %58

58:                                               ; preds = %57, %53
  %59 = load i64, i64* %11, align 8
  %60 = icmp eq i64 %59, 4
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 15, i32 31
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %17, align 8
  store i32 0, i32* %19, align 4
  br label %64

64:                                               ; preds = %105, %58
  %65 = load i32, i32* %19, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %108

68:                                               ; preds = %64
  %69 = load i32, i32* %19, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %19, align 4
  %74 = add nsw i32 %73, 1
  %75 = sub nsw i32 0, %74
  %76 = icmp ne i32 %72, %75
  br i1 %76, label %77, label %104

77:                                               ; preds = %68
  store i64 65535, i64* %16, align 8
  %78 = load i64, i64* %17, align 8
  %79 = load i64, i64* %11, align 8
  %80 = load i32, i32* %19, align 4
  %81 = sext i32 %80 to i64
  %82 = mul i64 %79, %81
  %83 = shl i64 %78, %82
  %84 = load i64, i64* %16, align 8
  %85 = xor i64 %84, %83
  store i64 %85, i64* %16, align 8
  %86 = load i64, i64* %18, align 8
  %87 = load i64, i64* %16, align 8
  %88 = and i64 %86, %87
  %89 = load i32, i32* %19, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @KSZ9031_PS_TO_REG, align 4
  %94 = sdiv i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* %17, align 8
  %97 = and i64 %95, %96
  %98 = load i64, i64* %11, align 8
  %99 = load i32, i32* %19, align 4
  %100 = sext i32 %99 to i64
  %101 = mul i64 %98, %100
  %102 = shl i64 %97, %101
  %103 = or i64 %88, %102
  store i64 %103, i64* %18, align 8
  br label %104

104:                                              ; preds = %77, %68
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %19, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %19, align 4
  br label %64

108:                                              ; preds = %64
  %109 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %110 = load i64, i64* %10, align 8
  %111 = load i64, i64* %18, align 8
  %112 = call i32 @phy_write_mmd(%struct.phy_device* %109, i32 2, i64 %110, i64 %111)
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %108, %48
  %114 = load i32, i32* %7, align 4
  ret i32 %114
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #2

declare dso_local i64 @phy_read_mmd(%struct.phy_device*, i32, i64) #2

declare dso_local i32 @phy_write_mmd(%struct.phy_device*, i32, i64, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
