; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/parsers/extr_cmdlinepart.c_parse_cmdline_partitions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/parsers/extr_cmdlinepart.c_parse_cmdline_partitions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdline_mtd_partition = type { i32, %struct.TYPE_4__*, i32, %struct.cmdline_mtd_partition* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.mtd_info = type { i8*, i64 }
%struct.mtd_partition = type { i32 }
%struct.mtd_part_parser_data = type { i32 }

@cmdline_parsed = common dso_local global i32 0, align 4
@cmdline = common dso_local global i32 0, align 4
@partitions = common dso_local global %struct.cmdline_mtd_partition* null, align 8
@OFFSET_CONTINUOUS = common dso_local global i64 0, align 8
@SIZE_REMAINING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"%s: partitioning exceeds flash size, truncating\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"%s: skipping zero sized partition\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.mtd_partition**, %struct.mtd_part_parser_data*)* @parse_cmdline_partitions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_cmdline_partitions(%struct.mtd_info* %0, %struct.mtd_partition** %1, %struct.mtd_part_parser_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.mtd_partition**, align 8
  %7 = alloca %struct.mtd_part_parser_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cmdline_mtd_partition*, align 8
  %12 = alloca i8*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store %struct.mtd_partition** %1, %struct.mtd_partition*** %6, align 8
  store %struct.mtd_part_parser_data* %2, %struct.mtd_part_parser_data** %7, align 8
  %13 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %14 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %12, align 8
  %16 = load i32, i32* @cmdline_parsed, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @cmdline, align 4
  %20 = call i32 @mtdpart_setup_real(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %4, align 4
  br label %223

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %3
  %27 = load %struct.cmdline_mtd_partition*, %struct.cmdline_mtd_partition** @partitions, align 8
  store %struct.cmdline_mtd_partition* %27, %struct.cmdline_mtd_partition** %11, align 8
  br label %28

28:                                               ; preds = %43, %26
  %29 = load %struct.cmdline_mtd_partition*, %struct.cmdline_mtd_partition** %11, align 8
  %30 = icmp ne %struct.cmdline_mtd_partition* %29, null
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  %32 = load i8*, i8** %12, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load %struct.cmdline_mtd_partition*, %struct.cmdline_mtd_partition** %11, align 8
  %36 = getelementptr inbounds %struct.cmdline_mtd_partition, %struct.cmdline_mtd_partition* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = call i32 @strcmp(i32 %37, i8* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34, %31
  br label %47

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.cmdline_mtd_partition*, %struct.cmdline_mtd_partition** %11, align 8
  %45 = getelementptr inbounds %struct.cmdline_mtd_partition, %struct.cmdline_mtd_partition* %44, i32 0, i32 3
  %46 = load %struct.cmdline_mtd_partition*, %struct.cmdline_mtd_partition** %45, align 8
  store %struct.cmdline_mtd_partition* %46, %struct.cmdline_mtd_partition** %11, align 8
  br label %28

47:                                               ; preds = %41, %28
  %48 = load %struct.cmdline_mtd_partition*, %struct.cmdline_mtd_partition** %11, align 8
  %49 = icmp ne %struct.cmdline_mtd_partition* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %223

51:                                               ; preds = %47
  store i32 0, i32* %9, align 4
  store i64 0, i64* %8, align 8
  br label %52

52:                                               ; preds = %197, %51
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.cmdline_mtd_partition*, %struct.cmdline_mtd_partition** %11, align 8
  %55 = getelementptr inbounds %struct.cmdline_mtd_partition, %struct.cmdline_mtd_partition* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %200

58:                                               ; preds = %52
  %59 = load %struct.cmdline_mtd_partition*, %struct.cmdline_mtd_partition** %11, align 8
  %60 = getelementptr inbounds %struct.cmdline_mtd_partition, %struct.cmdline_mtd_partition* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @OFFSET_CONTINUOUS, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %58
  %70 = load i64, i64* %8, align 8
  %71 = load %struct.cmdline_mtd_partition*, %struct.cmdline_mtd_partition** %11, align 8
  %72 = getelementptr inbounds %struct.cmdline_mtd_partition, %struct.cmdline_mtd_partition* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i64 %70, i64* %77, align 8
  br label %87

78:                                               ; preds = %58
  %79 = load %struct.cmdline_mtd_partition*, %struct.cmdline_mtd_partition** %11, align 8
  %80 = getelementptr inbounds %struct.cmdline_mtd_partition, %struct.cmdline_mtd_partition* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %8, align 8
  br label %87

87:                                               ; preds = %78, %69
  %88 = load %struct.cmdline_mtd_partition*, %struct.cmdline_mtd_partition** %11, align 8
  %89 = getelementptr inbounds %struct.cmdline_mtd_partition, %struct.cmdline_mtd_partition* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @SIZE_REMAINING, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %111

98:                                               ; preds = %87
  %99 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %100 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %8, align 8
  %103 = sub i64 %101, %102
  %104 = load %struct.cmdline_mtd_partition*, %struct.cmdline_mtd_partition** %11, align 8
  %105 = getelementptr inbounds %struct.cmdline_mtd_partition, %struct.cmdline_mtd_partition* %104, i32 0, i32 1
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  store i64 %103, i64* %110, align 8
  br label %111

111:                                              ; preds = %98, %87
  %112 = load i64, i64* %8, align 8
  %113 = load %struct.cmdline_mtd_partition*, %struct.cmdline_mtd_partition** %11, align 8
  %114 = getelementptr inbounds %struct.cmdline_mtd_partition, %struct.cmdline_mtd_partition* %113, i32 0, i32 1
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = add i64 %112, %120
  %122 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %123 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ugt i64 %121, %124
  br i1 %125, label %126, label %143

126:                                              ; preds = %111
  %127 = load %struct.cmdline_mtd_partition*, %struct.cmdline_mtd_partition** %11, align 8
  %128 = getelementptr inbounds %struct.cmdline_mtd_partition, %struct.cmdline_mtd_partition* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @pr_warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %129)
  %131 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %132 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %8, align 8
  %135 = sub i64 %133, %134
  %136 = load %struct.cmdline_mtd_partition*, %struct.cmdline_mtd_partition** %11, align 8
  %137 = getelementptr inbounds %struct.cmdline_mtd_partition, %struct.cmdline_mtd_partition* %136, i32 0, i32 1
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  store i64 %135, i64* %142, align 8
  br label %143

143:                                              ; preds = %126, %111
  %144 = load %struct.cmdline_mtd_partition*, %struct.cmdline_mtd_partition** %11, align 8
  %145 = getelementptr inbounds %struct.cmdline_mtd_partition, %struct.cmdline_mtd_partition* %144, i32 0, i32 1
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* %8, align 8
  %153 = add i64 %152, %151
  store i64 %153, i64* %8, align 8
  %154 = load %struct.cmdline_mtd_partition*, %struct.cmdline_mtd_partition** %11, align 8
  %155 = getelementptr inbounds %struct.cmdline_mtd_partition, %struct.cmdline_mtd_partition* %154, i32 0, i32 1
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %196

163:                                              ; preds = %143
  %164 = load %struct.cmdline_mtd_partition*, %struct.cmdline_mtd_partition** %11, align 8
  %165 = getelementptr inbounds %struct.cmdline_mtd_partition, %struct.cmdline_mtd_partition* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %166)
  %168 = load %struct.cmdline_mtd_partition*, %struct.cmdline_mtd_partition** %11, align 8
  %169 = getelementptr inbounds %struct.cmdline_mtd_partition, %struct.cmdline_mtd_partition* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = add nsw i32 %170, -1
  store i32 %171, i32* %169, align 8
  %172 = load %struct.cmdline_mtd_partition*, %struct.cmdline_mtd_partition** %11, align 8
  %173 = getelementptr inbounds %struct.cmdline_mtd_partition, %struct.cmdline_mtd_partition* %172, i32 0, i32 1
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %173, align 8
  %175 = load i32, i32* %9, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i64 %176
  %178 = load %struct.cmdline_mtd_partition*, %struct.cmdline_mtd_partition** %11, align 8
  %179 = getelementptr inbounds %struct.cmdline_mtd_partition, %struct.cmdline_mtd_partition* %178, i32 0, i32 1
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = load i32, i32* %9, align 4
  %182 = add nsw i32 %181, 1
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i64 %183
  %185 = load %struct.cmdline_mtd_partition*, %struct.cmdline_mtd_partition** %11, align 8
  %186 = getelementptr inbounds %struct.cmdline_mtd_partition, %struct.cmdline_mtd_partition* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* %9, align 4
  %189 = sub nsw i32 %187, %188
  %190 = sext i32 %189 to i64
  %191 = mul i64 16, %190
  %192 = trunc i64 %191 to i32
  %193 = call i32 @memmove(%struct.TYPE_4__* %177, %struct.TYPE_4__* %184, i32 %192)
  %194 = load i32, i32* %9, align 4
  %195 = add nsw i32 %194, -1
  store i32 %195, i32* %9, align 4
  br label %196

196:                                              ; preds = %163, %143
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %9, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %9, align 4
  br label %52

200:                                              ; preds = %52
  %201 = load %struct.cmdline_mtd_partition*, %struct.cmdline_mtd_partition** %11, align 8
  %202 = getelementptr inbounds %struct.cmdline_mtd_partition, %struct.cmdline_mtd_partition* %201, i32 0, i32 1
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %202, align 8
  %204 = load %struct.cmdline_mtd_partition*, %struct.cmdline_mtd_partition** %11, align 8
  %205 = getelementptr inbounds %struct.cmdline_mtd_partition, %struct.cmdline_mtd_partition* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = sext i32 %206 to i64
  %208 = mul i64 16, %207
  %209 = trunc i64 %208 to i32
  %210 = load i32, i32* @GFP_KERNEL, align 4
  %211 = call %struct.mtd_partition* @kmemdup(%struct.TYPE_4__* %203, i32 %209, i32 %210)
  %212 = load %struct.mtd_partition**, %struct.mtd_partition*** %6, align 8
  store %struct.mtd_partition* %211, %struct.mtd_partition** %212, align 8
  %213 = load %struct.mtd_partition**, %struct.mtd_partition*** %6, align 8
  %214 = load %struct.mtd_partition*, %struct.mtd_partition** %213, align 8
  %215 = icmp ne %struct.mtd_partition* %214, null
  br i1 %215, label %219, label %216

216:                                              ; preds = %200
  %217 = load i32, i32* @ENOMEM, align 4
  %218 = sub nsw i32 0, %217
  store i32 %218, i32* %4, align 4
  br label %223

219:                                              ; preds = %200
  %220 = load %struct.cmdline_mtd_partition*, %struct.cmdline_mtd_partition** %11, align 8
  %221 = getelementptr inbounds %struct.cmdline_mtd_partition, %struct.cmdline_mtd_partition* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  store i32 %222, i32* %4, align 4
  br label %223

223:                                              ; preds = %219, %216, %50, %23
  %224 = load i32, i32* %4, align 4
  ret i32 %224
}

declare dso_local i32 @mtdpart_setup_real(i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @memmove(%struct.TYPE_4__*, %struct.TYPE_4__*, i32) #1

declare dso_local %struct.mtd_partition* @kmemdup(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
