; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_host_interface_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_host_interface_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%union.anon = type { %struct.ixgbe_hic_hdr }
%struct.ixgbe_hic_hdr = type { i64 }

@IXGBE_HI_MAX_BLOCK_BYTE_LENGTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Buffer length failure buffersize-%d.\0A\00", align 1
@IXGBE_ERR_HOST_INTERFACE_COMMAND = common dso_local global i64 0, align 8
@IXGBE_GSSR_SW_MNG_SM = common dso_local global i32 0, align 4
@IXGBE_FLEX_MNG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Buffer not large enough for reply message.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_host_interface_command(%struct.ixgbe_hw* %0, i8* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %union.anon*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 8, i64* %12, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to %union.anon*
  store %union.anon* %19, %union.anon** %13, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @IXGBE_HI_MAX_BLOCK_BYTE_LENGTH, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22, %5
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i64, i64* @IXGBE_ERR_HOST_INTERFACE_COMMAND, align 8
  store i64 %30, i64* %6, align 8
  br label %140

31:                                               ; preds = %22
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %33 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64 (%struct.ixgbe_hw.1*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)** %35, align 8
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %38 = bitcast %struct.ixgbe_hw* %37 to %struct.ixgbe_hw.1*
  %39 = load i32, i32* @IXGBE_GSSR_SW_MNG_SM, align 4
  %40 = call i64 %36(%struct.ixgbe_hw.1* %38, i32 %39)
  store i64 %40, i64* %16, align 8
  %41 = load i64, i64* %16, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = load i64, i64* %16, align 8
  store i64 %44, i64* %6, align 8
  br label %140

45:                                               ; preds = %31
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %10, align 8
  %50 = call i64 @ixgbe_hic_unlocked(%struct.ixgbe_hw* %46, i8* %47, i64 %48, i64 %49)
  store i64 %50, i64* %16, align 8
  %51 = load i64, i64* %16, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %129

54:                                               ; preds = %45
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  br label %129

58:                                               ; preds = %54
  %59 = load i64, i64* %12, align 8
  %60 = ashr i64 %59, 2
  store i64 %60, i64* %15, align 8
  store i64 0, i64* %17, align 8
  br label %61

61:                                               ; preds = %80, %58
  %62 = load i64, i64* %17, align 8
  %63 = load i64, i64* %15, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %61
  %66 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %67 = load i32, i32* @IXGBE_FLEX_MNG, align 4
  %68 = load i64, i64* %17, align 8
  %69 = call i8* @IXGBE_READ_REG_ARRAY(%struct.ixgbe_hw* %66, i32 %67, i64 %68)
  %70 = ptrtoint i8* %69 to i64
  %71 = load %union.anon*, %union.anon** %13, align 8
  %72 = bitcast %union.anon* %71 to [1 x i64]*
  %73 = load i64, i64* %17, align 8
  %74 = getelementptr inbounds [1 x i64], [1 x i64]* %72, i64 0, i64 %73
  store i64 %70, i64* %74, align 8
  %75 = load %union.anon*, %union.anon** %13, align 8
  %76 = bitcast %union.anon* %75 to [1 x i64]*
  %77 = load i64, i64* %17, align 8
  %78 = getelementptr inbounds [1 x i64], [1 x i64]* %76, i64 0, i64 %77
  %79 = call i32 @le32_to_cpus(i64* %78)
  br label %80

80:                                               ; preds = %65
  %81 = load i64, i64* %17, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %17, align 8
  br label %61

83:                                               ; preds = %61
  %84 = load %union.anon*, %union.anon** %13, align 8
  %85 = bitcast %union.anon* %84 to %struct.ixgbe_hic_hdr*
  %86 = getelementptr inbounds %struct.ixgbe_hic_hdr, %struct.ixgbe_hic_hdr* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %14, align 8
  %88 = load i64, i64* %14, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %83
  br label %129

91:                                               ; preds = %83
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* %14, align 8
  %94 = call i64 @round_up(i64 %93, i32 4)
  %95 = load i64, i64* %12, align 8
  %96 = add nsw i64 %94, %95
  %97 = icmp slt i64 %92, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %91
  %99 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %100 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %99, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %101 = load i64, i64* @IXGBE_ERR_HOST_INTERFACE_COMMAND, align 8
  store i64 %101, i64* %16, align 8
  br label %129

102:                                              ; preds = %91
  %103 = load i64, i64* %14, align 8
  %104 = add nsw i64 %103, 3
  %105 = ashr i64 %104, 2
  store i64 %105, i64* %15, align 8
  br label %106

106:                                              ; preds = %125, %102
  %107 = load i64, i64* %17, align 8
  %108 = load i64, i64* %15, align 8
  %109 = icmp sle i64 %107, %108
  br i1 %109, label %110, label %128

110:                                              ; preds = %106
  %111 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %112 = load i32, i32* @IXGBE_FLEX_MNG, align 4
  %113 = load i64, i64* %17, align 8
  %114 = call i8* @IXGBE_READ_REG_ARRAY(%struct.ixgbe_hw* %111, i32 %112, i64 %113)
  %115 = ptrtoint i8* %114 to i64
  %116 = load %union.anon*, %union.anon** %13, align 8
  %117 = bitcast %union.anon* %116 to [1 x i64]*
  %118 = load i64, i64* %17, align 8
  %119 = getelementptr inbounds [1 x i64], [1 x i64]* %117, i64 0, i64 %118
  store i64 %115, i64* %119, align 8
  %120 = load %union.anon*, %union.anon** %13, align 8
  %121 = bitcast %union.anon* %120 to [1 x i64]*
  %122 = load i64, i64* %17, align 8
  %123 = getelementptr inbounds [1 x i64], [1 x i64]* %121, i64 0, i64 %122
  %124 = call i32 @le32_to_cpus(i64* %123)
  br label %125

125:                                              ; preds = %110
  %126 = load i64, i64* %17, align 8
  %127 = add nsw i64 %126, 1
  store i64 %127, i64* %17, align 8
  br label %106

128:                                              ; preds = %106
  br label %129

129:                                              ; preds = %128, %98, %90, %57, %53
  %130 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %131 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %133, align 8
  %135 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %136 = bitcast %struct.ixgbe_hw* %135 to %struct.ixgbe_hw.0*
  %137 = load i32, i32* @IXGBE_GSSR_SW_MNG_SM, align 4
  %138 = call i32 %134(%struct.ixgbe_hw.0* %136, i32 %137)
  %139 = load i64, i64* %16, align 8
  store i64 %139, i64* %6, align 8
  br label %140

140:                                              ; preds = %129, %43, %26
  %141 = load i64, i64* %6, align 8
  ret i64 %141
}

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*, ...) #1

declare dso_local i64 @ixgbe_hic_unlocked(%struct.ixgbe_hw*, i8*, i64, i64) #1

declare dso_local i8* @IXGBE_READ_REG_ARRAY(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i32 @le32_to_cpus(i64*) #1

declare dso_local i64 @round_up(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
