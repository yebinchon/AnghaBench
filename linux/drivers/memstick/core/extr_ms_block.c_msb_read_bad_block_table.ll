; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_read_bad_block_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_read_bad_block_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msb_data = type { i64*, i32, i32, i64, i32, %struct.ms_boot_page* }
%struct.ms_boot_page = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.scatterlist = type { i32 }

@MS_BLOCK_INVALID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"reading bad block of boot block at pba %d, offset %d len %d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"bad block table extends beyond the boot block\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"bad block table contains invalid block %d\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"duplicate bad block %d in the table\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"block %d is marked as factory bad\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msb_data*, i32)* @msb_read_bad_block_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msb_read_bad_block_table(%struct.msb_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msb_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ms_boot_page*, align 8
  %7 = alloca %struct.scatterlist, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.msb_data* %0, %struct.msb_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* null, i64** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp sgt i32 %19, 1
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %24 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %23, i32 0, i32 5
  %25 = load %struct.ms_boot_page*, %struct.ms_boot_page** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ms_boot_page, %struct.ms_boot_page* %25, i64 %27
  store %struct.ms_boot_page* %28, %struct.ms_boot_page** %6, align 8
  %29 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %30 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %17, align 8
  %36 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %37 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MS_BLOCK_INVALID, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %2
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %180

48:                                               ; preds = %2
  %49 = load %struct.ms_boot_page*, %struct.ms_boot_page** %6, align 8
  %50 = getelementptr inbounds %struct.ms_boot_page, %struct.ms_boot_page* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %12, align 4
  %54 = load %struct.ms_boot_page*, %struct.ms_boot_page** %6, align 8
  %55 = getelementptr inbounds %struct.ms_boot_page, %struct.ms_boot_page* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = add i64 8, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %180

65:                                               ; preds = %48
  %66 = load i32, i32* %13, align 4
  %67 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %68 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = sdiv i32 %66, %69
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %73 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = srem i32 %71, %74
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %15, align 4
  %78 = add nsw i32 %76, %77
  %79 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %80 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @DIV_ROUND_UP(i32 %78, i32 %81)
  %83 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %84 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = mul nsw i32 %82, %85
  store i32 %86, i32* %16, align 4
  %87 = load i64, i64* %17, align 8
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %12, align 4
  %90 = call i32 (i8*, i64, ...) @dbg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %87, i32 %88, i32 %89)
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call i64* @kzalloc(i32 %91, i32 %92)
  store i64* %93, i64** %8, align 8
  %94 = load i64*, i64** %8, align 8
  %95 = icmp ne i64* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %65
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %180

99:                                               ; preds = %65
  %100 = load i64*, i64** %8, align 8
  %101 = load i32, i32* %16, align 4
  %102 = call i32 @sg_init_one(%struct.scatterlist* %7, i64* %100, i32 %101)
  br label %103

103:                                              ; preds = %131, %99
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %16, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %132

107:                                              ; preds = %103
  %108 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %109 = load i64, i64* %17, align 8
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @msb_read_page(%struct.msb_data* %108, i64 %109, i32 %110, i32* null, %struct.scatterlist* %7, i32 %111)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  br label %176

116:                                              ; preds = %107
  %117 = load i32, i32* %14, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %14, align 4
  %119 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %120 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %14, align 4
  %125 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %126 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %124, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %116
  %130 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %132

131:                                              ; preds = %116
  br label %103

132:                                              ; preds = %129, %103
  %133 = load i32, i32* %15, align 4
  store i32 %133, i32* %10, align 4
  br label %134

134:                                              ; preds = %172, %132
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = udiv i64 %138, 8
  %140 = icmp ult i64 %136, %139
  br i1 %140, label %141, label %175

141:                                              ; preds = %134
  %142 = load i64*, i64** %8, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = call i64 @be16_to_cpu(i64 %146)
  store i64 %147, i64* %18, align 8
  %148 = load i64, i64* %18, align 8
  %149 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %150 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = icmp sge i64 %148, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %141
  %154 = load i64, i64* %18, align 8
  %155 = call i32 (i8*, i64, ...) @dbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %154)
  br label %172

156:                                              ; preds = %141
  %157 = load i64, i64* %18, align 8
  %158 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %159 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = call i64 @test_bit(i64 %157, i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %156
  %164 = load i64, i64* %18, align 8
  %165 = call i32 (i8*, i64, ...) @dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %164)
  br label %172

166:                                              ; preds = %156
  %167 = load i64, i64* %18, align 8
  %168 = call i32 (i8*, i64, ...) @dbg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i64 %167)
  %169 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %170 = load i64, i64* %18, align 8
  %171 = call i32 @msb_mark_block_used(%struct.msb_data* %169, i64 %170)
  br label %172

172:                                              ; preds = %166, %163, %153
  %173 = load i32, i32* %10, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %10, align 4
  br label %134

175:                                              ; preds = %134
  br label %176

176:                                              ; preds = %175, %115
  %177 = load i64*, i64** %8, align 8
  %178 = call i32 @kfree(i64* %177)
  %179 = load i32, i32* %11, align 4
  store i32 %179, i32* %3, align 4
  br label %180

180:                                              ; preds = %176, %96, %64, %45
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @dbg(i8*, i64, ...) #1

declare dso_local i64* @kzalloc(i32, i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i64*, i32) #1

declare dso_local i32 @msb_read_page(%struct.msb_data*, i64, i32, i32*, %struct.scatterlist*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @be16_to_cpu(i64) #1

declare dso_local i64 @test_bit(i64, i32) #1

declare dso_local i32 @msb_mark_block_used(%struct.msb_data*, i64) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
