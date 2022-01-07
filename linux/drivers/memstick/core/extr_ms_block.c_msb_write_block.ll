; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_write_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_write_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msb_data = type { i64, i64, i64, i64*, i32, i32, i64, %struct.scatterlist*, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i8* }
%struct.TYPE_4__ = type { i8*, i64, i32 }
%struct.scatterlist = type { i64 }

@EROFS = common dso_local global i32 0, align 4
@MS_BLOCK_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"BUG: write: attempt to write MS_BLOCK_INVALID block\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"BUG: write: attempt to write beyond the end of device\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"BUG: write: lba zone mismatch\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"BUG: write: attempt to write to boot blocks!\00", align 1
@MEMSTICK_CP_BLOCK = common dso_local global i32 0, align 4
@h_msb_write_block = common dso_local global i32 0, align 4
@verify_writes = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"write failed, trying to erase the pba %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msb_data*, i64, i64, %struct.scatterlist*, i32)* @msb_write_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msb_write_block(%struct.msb_data* %0, i64 %1, i64 %2, %struct.scatterlist* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.msb_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.msb_data* %0, %struct.msb_data** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.scatterlist* %3, %struct.scatterlist** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 1, i32* %13, align 4
  %14 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %15 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %18 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %16, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %24 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %23, i32 0, i32 9
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load i32, i32* @EROFS, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %178

30:                                               ; preds = %5
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @MS_BLOCK_INVALID, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %178

38:                                               ; preds = %30
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %41 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %39, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %47 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp sge i64 %45, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44, %38
  %51 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %178

54:                                               ; preds = %44
  %55 = load i64, i64* %9, align 8
  %56 = call i64 @msb_get_zone_from_lba(i64 %55)
  %57 = load i64, i64* %8, align 8
  %58 = call i64 @msb_get_zone_from_pba(i64 %57)
  %59 = icmp ne i64 %56, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %178

64:                                               ; preds = %54
  %65 = load i64, i64* %8, align 8
  %66 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %67 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %66, i32 0, i32 3
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %65, %70
  br i1 %71, label %80, label %72

72:                                               ; preds = %64
  %73 = load i64, i64* %8, align 8
  %74 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %75 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %74, i32 0, i32 3
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %73, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %72, %64
  %81 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %6, align 4
  br label %178

84:                                               ; preds = %72
  br label %85

85:                                               ; preds = %84, %173
  %86 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %87 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %86, i32 0, i32 9
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i32, i32* @EROFS, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %6, align 4
  br label %178

93:                                               ; preds = %85
  %94 = load i32, i32* @MEMSTICK_CP_BLOCK, align 4
  %95 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %96 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %95, i32 0, i32 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  store i32 %94, i32* %98, align 8
  %99 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %100 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %99, i32 0, i32 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  store i64 0, i64* %102, align 8
  %103 = load i64, i64* %8, align 8
  %104 = call i8* @cpu_to_be16(i64 %103)
  %105 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %106 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %105, i32 0, i32 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  store i8* %104, i8** %108, align 8
  %109 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %110 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %109, i32 0, i32 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  store i32 255, i32* %112, align 8
  %113 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %114 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %113, i32 0, i32 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  store i32 248, i32* %116, align 4
  %117 = load i64, i64* %9, align 8
  %118 = call i8* @cpu_to_be16(i64 %117)
  %119 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %120 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %119, i32 0, i32 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 2
  store i8* %118, i8** %122, align 8
  %123 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %124 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %125 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %124, i32 0, i32 7
  store %struct.scatterlist* %123, %struct.scatterlist** %125, align 8
  %126 = load i32, i32* %11, align 4
  %127 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %128 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %127, i32 0, i32 4
  store i32 %126, i32* %128, align 8
  %129 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %130 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %129, i32 0, i32 6
  store i64 0, i64* %130, align 8
  %131 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %132 = load i32, i32* @h_msb_write_block, align 4
  %133 = call i32 @msb_run_state_machine(%struct.msb_data* %131, i32 %132)
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* %12, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %152, label %136

136:                                              ; preds = %93
  %137 = load i64, i64* @verify_writes, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %146, label %139

139:                                              ; preds = %136
  %140 = load i64, i64* %8, align 8
  %141 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %142 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @test_bit(i64 %140, i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %139, %136
  %147 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %148 = load i64, i64* %8, align 8
  %149 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %150 = load i32, i32* %11, align 4
  %151 = call i32 @msb_verify_block(%struct.msb_data* %147, i64 %148, %struct.scatterlist* %149, i32 %150)
  store i32 %151, i32* %12, align 4
  br label %152

152:                                              ; preds = %146, %139, %93
  %153 = load i32, i32* %12, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %152
  br label %176

156:                                              ; preds = %152
  %157 = load i32, i32* %13, align 4
  %158 = icmp sgt i32 %157, 1
  br i1 %158, label %163, label %159

159:                                              ; preds = %156
  %160 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %161 = call i64 @msb_reset(%struct.msb_data* %160, i32 1)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %159, %156
  br label %176

164:                                              ; preds = %159
  %165 = load i64, i64* %8, align 8
  %166 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i64 %165)
  %167 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %168 = load i64, i64* %8, align 8
  %169 = call i32 @msb_erase_block(%struct.msb_data* %167, i64 %168)
  store i32 %169, i32* %12, align 4
  %170 = load i32, i32* %12, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %164
  br label %176

173:                                              ; preds = %164
  %174 = load i32, i32* %13, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %13, align 4
  br label %85

176:                                              ; preds = %172, %163, %155
  %177 = load i32, i32* %12, align 4
  store i32 %177, i32* %6, align 4
  br label %178

178:                                              ; preds = %176, %90, %80, %60, %50, %34, %27
  %179 = load i32, i32* %6, align 4
  ret i32 %179
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @msb_get_zone_from_lba(i64) #1

declare dso_local i64 @msb_get_zone_from_pba(i64) #1

declare dso_local i8* @cpu_to_be16(i64) #1

declare dso_local i32 @msb_run_state_machine(%struct.msb_data*, i32) #1

declare dso_local i32 @test_bit(i64, i32) #1

declare dso_local i32 @msb_verify_block(%struct.msb_data*, i64, %struct.scatterlist*, i32) #1

declare dso_local i64 @msb_reset(%struct.msb_data*, i32) #1

declare dso_local i32 @msb_erase_block(%struct.msb_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
