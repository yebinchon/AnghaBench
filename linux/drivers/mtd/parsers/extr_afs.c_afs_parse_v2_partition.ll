; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/parsers/extr_afs.c_afs_parse_v2_partition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/parsers/extr_afs.c_afs_parse_v2_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.mtd_partition = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Parsing v2 partition @%08x-%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"AFS: mtd read failed at 0x%x: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"found image \22%s\22, version %08x, info @%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Padding 1 word (4 bytes)\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Padding 2 words (8 bytes)\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"AFS: bad checksum on v2 image info: %08x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [61 x i8] c"image entry=%08x, attr=%08x, regions=%08x, bs=%08x, be=%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"  region %d: address: %08x, size: %08x, offset: %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"   partition start = %08x, partition end = %08x\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, %struct.mtd_partition*)* @afs_parse_v2_partition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_parse_v2_partition(%struct.mtd_info* %0, i32 %1, %struct.mtd_partition* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_partition*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [12 x i32], align 16
  %10 = alloca [36 x i32], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mtd_partition* %2, %struct.mtd_partition** %7, align 8
  store i32 0, i32* %22, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %31 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %29, %32
  %34 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %37 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %35, %38
  %40 = sext i32 %39 to i64
  %41 = sub i64 %40, 48
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %8, align 4
  %43 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = getelementptr inbounds [12 x i32], [12 x i32]* %9, i64 0, i64 0
  %46 = call i32 @mtd_read(%struct.mtd_info* %43, i32 %44, i32 48, i64* %19, i32* %45)
  store i32 %46, i32* %20, align 4
  %47 = load i32, i32* %20, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %3
  %50 = load i32, i32* %20, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load i64, i64* %19, align 8
  %54 = icmp ne i64 %53, 48
  br i1 %54, label %55, label %61

55:                                               ; preds = %52, %3
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %20, align 4
  %58 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %231

61:                                               ; preds = %52, %49
  %62 = getelementptr inbounds [12 x i32], [12 x i32]* %9, i64 0, i64 0
  %63 = bitcast i32* %62 to i8*
  store i8* %63, i8** %11, align 8
  %64 = getelementptr inbounds [12 x i32], [12 x i32]* %9, i64 0, i64 9
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %68 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %66, %69
  %71 = sext i32 %70 to i64
  %72 = sub i64 %71, 48
  %73 = getelementptr inbounds [12 x i32], [12 x i32]* %9, i64 0, i64 8
  %74 = load i32, i32* %73, align 16
  %75 = sext i32 %74 to i64
  %76 = sub i64 %72, %75
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %8, align 4
  %78 = load i8*, i8** %11, align 8
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %78, i32 %79, i32 %80)
  %82 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %83 = load i32, i32* %8, align 4
  %84 = getelementptr inbounds [36 x i32], [36 x i32]* %10, i64 0, i64 0
  %85 = call i32 @mtd_read(%struct.mtd_info* %82, i32 %83, i32 144, i64* %19, i32* %84)
  store i32 %85, i32* %20, align 4
  %86 = load i32, i32* %20, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %61
  %89 = load i32, i32* %20, align 4
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %88
  %92 = load i64, i64* %19, align 8
  %93 = icmp ne i64 %92, 144
  br i1 %93, label %94, label %100

94:                                               ; preds = %91, %61
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %20, align 4
  %97 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %95, i32 %96)
  %98 = load i32, i32* @EIO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %4, align 4
  br label %231

100:                                              ; preds = %91, %88
  %101 = getelementptr inbounds [36 x i32], [36 x i32]* %10, i64 0, i64 1
  %102 = call i32 @word_sum_v2(i32* %101, i32 34)
  store i32 %102, i32* %18, align 4
  %103 = load i32, i32* %18, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %100
  %106 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %22, align 4
  br label %115

107:                                              ; preds = %100
  %108 = getelementptr inbounds [36 x i32], [36 x i32]* %10, i64 0, i64 2
  %109 = call i32 @word_sum_v2(i32* %108, i32 34)
  store i32 %109, i32* %18, align 4
  %110 = load i32, i32* %18, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %107
  %113 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  store i32 2, i32* %22, align 4
  br label %114

114:                                              ; preds = %112, %107
  br label %115

115:                                              ; preds = %114, %105
  %116 = load i32, i32* %18, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load i32, i32* %18, align 4
  %120 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %4, align 4
  br label %231

123:                                              ; preds = %115
  %124 = load i32, i32* %22, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [36 x i32], [36 x i32]* %10, i64 0, i64 %125
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %22, align 4
  %129 = add nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [36 x i32], [36 x i32]* %10, i64 0, i64 %130
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %14, align 4
  %133 = load i32, i32* %22, align 4
  %134 = add nsw i32 %133, 2
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [36 x i32], [36 x i32]* %10, i64 0, i64 %135
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %15, align 4
  %138 = getelementptr inbounds [36 x i32], [36 x i32]* %10, i64 0, i64 20
  %139 = load i32, i32* %138, align 16
  store i32 %139, i32* %16, align 4
  %140 = getelementptr inbounds [36 x i32], [36 x i32]* %10, i64 0, i64 21
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %17, align 4
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* %17, align 4
  %147 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0), i32 %142, i32 %143, i32 %144, i32 %145, i32 %146)
  store i32 0, i32* %21, align 4
  br label %148

148:                                              ; preds = %227, %123
  %149 = load i32, i32* %21, align 4
  %150 = load i32, i32* %15, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %230

152:                                              ; preds = %148
  %153 = load i32, i32* %22, align 4
  %154 = add nsw i32 %153, 3
  %155 = load i32, i32* %21, align 4
  %156 = mul nsw i32 %155, 4
  %157 = add nsw i32 %154, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [36 x i32], [36 x i32]* %10, i64 0, i64 %158
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %23, align 4
  %161 = load i32, i32* %22, align 4
  %162 = add nsw i32 %161, 4
  %163 = load i32, i32* %21, align 4
  %164 = mul nsw i32 %163, 4
  %165 = add nsw i32 %162, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [36 x i32], [36 x i32]* %10, i64 0, i64 %166
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %24, align 4
  %169 = load i32, i32* %22, align 4
  %170 = add nsw i32 %169, 5
  %171 = load i32, i32* %21, align 4
  %172 = mul nsw i32 %171, 4
  %173 = add nsw i32 %170, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [36 x i32], [36 x i32]* %10, i64 0, i64 %174
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %25, align 4
  %177 = load i32, i32* %21, align 4
  %178 = load i32, i32* %23, align 4
  %179 = load i32, i32* %24, align 4
  %180 = load i32, i32* %25, align 4
  %181 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i32 %177, i32 %178, i32 %179, i32 %180)
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* %25, align 4
  %184 = add nsw i32 %182, %183
  store i32 %184, i32* %26, align 4
  %185 = load i32, i32* %26, align 4
  %186 = load i32, i32* %24, align 4
  %187 = add nsw i32 %185, %186
  store i32 %187, i32* %27, align 4
  %188 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %189 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = sub nsw i32 %190, 1
  %192 = load i32, i32* %27, align 4
  %193 = add nsw i32 %192, %191
  store i32 %193, i32* %27, align 4
  %194 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %195 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = sub nsw i32 %196, 1
  %198 = xor i32 %197, -1
  %199 = load i32, i32* %27, align 4
  %200 = and i32 %199, %198
  store i32 %200, i32* %27, align 4
  %201 = load i32, i32* %26, align 4
  %202 = load i32, i32* %27, align 4
  %203 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i32 %201, i32 %202)
  %204 = load i8*, i8** %11, align 8
  %205 = load i32, i32* @GFP_KERNEL, align 4
  %206 = call i32 @kstrdup(i8* %204, i32 %205)
  %207 = load %struct.mtd_partition*, %struct.mtd_partition** %7, align 8
  %208 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %207, i32 0, i32 3
  store i32 %206, i32* %208, align 8
  %209 = load %struct.mtd_partition*, %struct.mtd_partition** %7, align 8
  %210 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %152
  %214 = load i32, i32* @ENOMEM, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %4, align 4
  br label %231

216:                                              ; preds = %152
  %217 = load i32, i32* %26, align 4
  %218 = load %struct.mtd_partition*, %struct.mtd_partition** %7, align 8
  %219 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %218, i32 0, i32 0
  store i32 %217, i32* %219, align 8
  %220 = load i32, i32* %27, align 4
  %221 = load i32, i32* %26, align 4
  %222 = sub nsw i32 %220, %221
  %223 = load %struct.mtd_partition*, %struct.mtd_partition** %7, align 8
  %224 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %223, i32 0, i32 1
  store i32 %222, i32* %224, align 4
  %225 = load %struct.mtd_partition*, %struct.mtd_partition** %7, align 8
  %226 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %225, i32 0, i32 2
  store i64 0, i64* %226, align 8
  br label %227

227:                                              ; preds = %216
  %228 = load i32, i32* %21, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %21, align 4
  br label %148

230:                                              ; preds = %148
  store i32 0, i32* %4, align 4
  br label %231

231:                                              ; preds = %230, %213, %118, %94, %55
  %232 = load i32, i32* %4, align 4
  ret i32 %232
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @mtd_read(%struct.mtd_info*, i32, i32, i64*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @word_sum_v2(i32*, i32) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
