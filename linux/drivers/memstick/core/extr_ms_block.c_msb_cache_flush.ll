; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_cache_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_cache_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msb_data = type { i64, i64*, i32, i32, i32, i32, i32, i64 }
%struct.scatterlist = type { i32 }
%struct.ms_extra_data_register = type { i32 }

@EROFS = common dso_local global i32 0, align 4
@MS_BLOCK_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Flushing the write cache of pba %d (LBA %d)\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"reading non-present sector %d of cache block %d\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"read error on sector %d, contents probably damaged\00", align 1
@MEMSTICK_OV_PG_NORMAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"page %d is marked as bad\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"marking page %d as containing damaged data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msb_data*)* @msb_cache_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msb_cache_flush(%struct.msb_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msb_data*, align 8
  %4 = alloca %struct.scatterlist, align 4
  %5 = alloca %struct.ms_extra_data_register, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.msb_data* %0, %struct.msb_data** %3, align 8
  %11 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %12 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %11, i32 0, i32 7
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EROFS, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %153

18:                                               ; preds = %1
  %19 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %20 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MS_BLOCK_INVALID, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %153

25:                                               ; preds = %18
  %26 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %27 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %10, align 8
  %29 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %30 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* %10, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = trunc i64 %35 to i32
  %37 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %38 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @dbg_verbose(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %36, i64 %39)
  %41 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %42 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %45 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @sg_init_one(%struct.scatterlist* %4, i32 %43, i32 %46)
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %102, %25
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %51 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %105

54:                                               ; preds = %48
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %57 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %56, i32 0, i32 4
  %58 = call i64 @test_bit(i32 %55, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %102

61:                                               ; preds = %54
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %64 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %62, %65
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i64, i64* %10, align 8
  %69 = call i32 @dbg_verbose(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %67, i64 %68)
  %70 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @msb_read_page(%struct.msb_data* %70, i64 %71, i32 %72, %struct.ms_extra_data_register* %5, %struct.scatterlist* %4, i32 %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @EBADMSG, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %61
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  br label %102

82:                                               ; preds = %61
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %2, align 4
  br label %153

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.ms_extra_data_register, %struct.ms_extra_data_register* %5, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @MEMSTICK_OV_PG_NORMAL, align 4
  %91 = and i32 %89, %90
  %92 = load i32, i32* @MEMSTICK_OV_PG_NORMAL, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  br label %102

97:                                               ; preds = %87
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %100 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %99, i32 0, i32 4
  %101 = call i32 @set_bit(i32 %98, i32* %100)
  br label %102

102:                                              ; preds = %97, %94, %79, %60
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %48

105:                                              ; preds = %48
  %106 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %107 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %108 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @msb_update_block(%struct.msb_data* %106, i64 %109, %struct.scatterlist* %4, i32 0)
  store i32 %110, i32* %8, align 4
  %111 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %112 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %111, i32 0, i32 1
  %113 = load i64*, i64** %112, align 8
  %114 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %115 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i64, i64* %113, i64 %116
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %9, align 8
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %149, label %121

121:                                              ; preds = %105
  store i32 0, i32* %6, align 4
  br label %122

122:                                              ; preds = %145, %121
  %123 = load i32, i32* %6, align 4
  %124 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %125 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %128, label %148

128:                                              ; preds = %122
  %129 = load i32, i32* %6, align 4
  %130 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %131 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %130, i32 0, i32 4
  %132 = call i64 @test_bit(i32 %129, i32* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %145

135:                                              ; preds = %128
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @dbg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %136)
  %138 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %139 = load i64, i64* %9, align 8
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* @MEMSTICK_OV_PG_NORMAL, align 4
  %142 = xor i32 %141, -1
  %143 = and i32 255, %142
  %144 = call i32 @msb_set_overwrite_flag(%struct.msb_data* %138, i64 %139, i32 %140, i32 %143)
  br label %145

145:                                              ; preds = %135, %134
  %146 = load i32, i32* %6, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %6, align 4
  br label %122

148:                                              ; preds = %122
  br label %149

149:                                              ; preds = %148, %105
  %150 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %151 = call i32 @msb_cache_discard(%struct.msb_data* %150)
  %152 = load i32, i32* %8, align 4
  store i32 %152, i32* %2, align 4
  br label %153

153:                                              ; preds = %149, %85, %24, %15
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i32 @dbg_verbose(i8*, i32, i64) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @msb_read_page(%struct.msb_data*, i64, i32, %struct.ms_extra_data_register*, %struct.scatterlist*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @dbg(i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @msb_update_block(%struct.msb_data*, i64, %struct.scatterlist*, i32) #1

declare dso_local i32 @msb_set_overwrite_flag(%struct.msb_data*, i64, i32, i32) #1

declare dso_local i32 @msb_cache_discard(%struct.msb_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
