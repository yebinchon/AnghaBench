; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_checksum_ptr_x550.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_checksum_ptr_x550.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"Failed to read EEPROM image\0A\00", align 1
@IXGBE_ERR_PARAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i64, i64, i64*, i64*, i64)* @ixgbe_checksum_ptr_x550 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_checksum_ptr_x550(%struct.ixgbe_hw* %0, i64 %1, i64 %2, i64* %3, i64* %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.ixgbe_hw*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca [256 x i64], align 16
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64*, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64 %5, i64* %13, align 8
  %21 = getelementptr inbounds [256 x i64], [256 x i64]* %14, i64 0, i64 0
  %22 = call i64 @ARRAY_SIZE(i64* %21)
  store i64 %22, i64* %17, align 8
  %23 = load i64*, i64** %12, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %39, label %25

25:                                               ; preds = %6
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %17, align 8
  %29 = getelementptr inbounds [256 x i64], [256 x i64]* %14, i64 0, i64 0
  %30 = call i64 @ixgbe_read_ee_hostif_buffer_X550(%struct.ixgbe_hw* %26, i64 %27, i64 %28, i64* %29)
  store i64 %30, i64* %15, align 8
  %31 = load i64, i64* %15, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %35 = call i32 @hw_dbg(%struct.ixgbe_hw* %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %36 = load i64, i64* %15, align 8
  store i64 %36, i64* %7, align 8
  br label %133

37:                                               ; preds = %25
  %38 = getelementptr inbounds [256 x i64], [256 x i64]* %14, i64 0, i64 0
  store i64* %38, i64** %20, align 8
  br label %49

39:                                               ; preds = %6
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i64, i64* @IXGBE_ERR_PARAM, align 8
  store i64 %44, i64* %7, align 8
  br label %133

45:                                               ; preds = %39
  %46 = load i64*, i64** %12, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  store i64* %48, i64** %20, align 8
  br label %49

49:                                               ; preds = %45, %37
  %50 = load i64, i64* %10, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  store i64 0, i64* %19, align 8
  %53 = load i64, i64* %10, align 8
  store i64 %53, i64* %16, align 8
  br label %74

54:                                               ; preds = %49
  store i64 1, i64* %19, align 8
  %55 = load i64*, i64** %20, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %16, align 8
  %58 = load i64, i64* %16, align 8
  %59 = icmp eq i64 %58, 65535
  br i1 %59, label %72, label %60

60:                                               ; preds = %54
  %61 = load i64, i64* %16, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %60
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %16, align 8
  %66 = add nsw i64 %64, %65
  %67 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %68 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp sge i64 %66, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %63, %60, %54
  store i64 0, i64* %7, align 8
  br label %133

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73, %52
  %75 = load i64*, i64** %12, align 8
  %76 = icmp ne i64* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load i64, i64* %19, align 8
  %79 = load i64, i64* %16, align 8
  %80 = add nsw i64 %78, %79
  %81 = load i64, i64* %13, align 8
  %82 = icmp sgt i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i64, i64* @IXGBE_ERR_PARAM, align 8
  store i64 %84, i64* %7, align 8
  br label %133

85:                                               ; preds = %77, %74
  %86 = load i64, i64* %19, align 8
  store i64 %86, i64* %18, align 8
  br label %87

87:                                               ; preds = %127, %85
  %88 = load i64, i64* %16, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %132

90:                                               ; preds = %87
  %91 = load i64, i64* %18, align 8
  %92 = load i64, i64* %17, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %119

94:                                               ; preds = %90
  %95 = load i64*, i64** %12, align 8
  %96 = icmp ne i64* %95, null
  br i1 %96, label %119, label %97

97:                                               ; preds = %94
  %98 = load i64, i64* %17, align 8
  %99 = load i64, i64* %9, align 8
  %100 = add nsw i64 %99, %98
  store i64 %100, i64* %9, align 8
  store i64 0, i64* %18, align 8
  %101 = load i64, i64* %16, align 8
  %102 = load i64, i64* %17, align 8
  %103 = icmp slt i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = load i64, i64* %16, align 8
  store i64 %105, i64* %17, align 8
  br label %106

106:                                              ; preds = %104, %97
  %107 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %108 = load i64, i64* %9, align 8
  %109 = load i64, i64* %17, align 8
  %110 = getelementptr inbounds [256 x i64], [256 x i64]* %14, i64 0, i64 0
  %111 = call i64 @ixgbe_read_ee_hostif_buffer_X550(%struct.ixgbe_hw* %107, i64 %108, i64 %109, i64* %110)
  store i64 %111, i64* %15, align 8
  %112 = load i64, i64* %15, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %106
  %115 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %116 = call i32 @hw_dbg(%struct.ixgbe_hw* %115, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %117 = load i64, i64* %15, align 8
  store i64 %117, i64* %7, align 8
  br label %133

118:                                              ; preds = %106
  br label %119

119:                                              ; preds = %118, %94, %90
  %120 = load i64*, i64** %20, align 8
  %121 = load i64, i64* %18, align 8
  %122 = getelementptr inbounds i64, i64* %120, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = load i64*, i64** %11, align 8
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %125, %123
  store i64 %126, i64* %124, align 8
  br label %127

127:                                              ; preds = %119
  %128 = load i64, i64* %18, align 8
  %129 = add nsw i64 %128, 1
  store i64 %129, i64* %18, align 8
  %130 = load i64, i64* %16, align 8
  %131 = add nsw i64 %130, -1
  store i64 %131, i64* %16, align 8
  br label %87

132:                                              ; preds = %87
  store i64 0, i64* %7, align 8
  br label %133

133:                                              ; preds = %132, %114, %83, %72, %43, %33
  %134 = load i64, i64* %7, align 8
  ret i64 %134
}

declare dso_local i64 @ARRAY_SIZE(i64*) #1

declare dso_local i64 @ixgbe_read_ee_hostif_buffer_X550(%struct.ixgbe_hw*, i64, i64, i64*) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
