; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_sm_ftl.c_sm_read_sector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_sm_ftl.c_sm_read_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm_ftl = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mtd_info* }
%struct.mtd_info = type { i32 }
%struct.sm_oob = type { i32 }
%struct.mtd_oob_ops = type { i64, i64, i32*, i64, i8*, i64, i64, i32 }

@EIO = common dso_local global i32 0, align 4
@SM_SECTOR_SIZE = common dso_local global i64 0, align 8
@MTD_OPS_RAW = common dso_local global i32 0, align 4
@MTD_OPS_PLACE_OOB = common dso_local global i32 0, align 4
@SM_OOB_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"read of block %d at zone %d, failed due to error (%d)\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"read of block %d at zone %d, failed because it is marked as bad\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"read of block %d at zone %d, failed due to ECC error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sm_ftl*, i32, i32, i32, i32*, %struct.sm_oob*)* @sm_read_sector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm_read_sector(%struct.sm_ftl* %0, i32 %1, i32 %2, i32 %3, i32* %4, %struct.sm_oob* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sm_ftl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.sm_oob*, align 8
  %14 = alloca %struct.mtd_info*, align 8
  %15 = alloca %struct.mtd_oob_ops, align 8
  %16 = alloca %struct.sm_oob, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.sm_ftl* %0, %struct.sm_ftl** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store %struct.sm_oob* %5, %struct.sm_oob** %13, align 8
  %19 = load %struct.sm_ftl*, %struct.sm_ftl** %8, align 8
  %20 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %19, i32 0, i32 3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.mtd_info*, %struct.mtd_info** %22, align 8
  store %struct.mtd_info* %23, %struct.mtd_info** %14, align 8
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %32

28:                                               ; preds = %6
  %29 = load i32*, i32** %12, align 8
  %30 = load i64, i64* @SM_SECTOR_SIZE, align 8
  %31 = call i32 @memset(i32* %29, i32 255, i64 %30)
  store i32 0, i32* %7, align 4
  br label %169

32:                                               ; preds = %6
  %33 = load %struct.sm_oob*, %struct.sm_oob** %13, align 8
  %34 = icmp ne %struct.sm_oob* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  store %struct.sm_oob* %16, %struct.sm_oob** %13, align 8
  br label %36

36:                                               ; preds = %35, %32
  %37 = load %struct.sm_ftl*, %struct.sm_ftl** %8, align 8
  %38 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @MTD_OPS_RAW, align 4
  br label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @MTD_OPS_PLACE_OOB, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %15, i32 0, i32 7
  store i32 %46, i32* %47, align 8
  %48 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %15, i32 0, i32 6
  store i64 0, i64* %48, align 8
  %49 = load i64, i64* @SM_OOB_SIZE, align 8
  %50 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %15, i32 0, i32 5
  store i64 %49, i64* %50, align 8
  %51 = load %struct.sm_oob*, %struct.sm_oob** %13, align 8
  %52 = bitcast %struct.sm_oob* %51 to i8*
  %53 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %15, i32 0, i32 4
  store i8* %52, i8** %53, align 8
  %54 = load i64, i64* @SM_SECTOR_SIZE, align 8
  %55 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %15, i32 0, i32 3
  store i64 %54, i64* %55, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %15, i32 0, i32 2
  store i32* %56, i32** %57, align 8
  br label %58

58:                                               ; preds = %164, %146, %120, %103, %45
  %59 = load i32, i32* %18, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %18, align 4
  %61 = icmp ne i32 %59, 0
  br i1 %61, label %62, label %89

62:                                               ; preds = %58
  %63 = load i32, i32* %9, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %62
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.sm_ftl*, %struct.sm_ftl** %8, align 8
  %68 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %66, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.sm_ftl*, %struct.sm_ftl** %8, align 8
  %74 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %72, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i32, i32* %17, align 4
  store i32 %78, i32* %7, align 4
  br label %169

79:                                               ; preds = %71, %65, %62
  %80 = load i32, i32* %18, align 4
  %81 = icmp eq i32 %80, 3
  br i1 %81, label %86, label %82

82:                                               ; preds = %79
  %83 = load %struct.sm_ftl*, %struct.sm_ftl** %8, align 8
  %84 = call i64 @sm_recheck_media(%struct.sm_ftl* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %82, %79
  %87 = load i32, i32* %17, align 4
  store i32 %87, i32* %7, align 4
  br label %169

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %88, %58
  %90 = load %struct.mtd_info*, %struct.mtd_info** %14, align 8
  %91 = load %struct.sm_ftl*, %struct.sm_ftl** %8, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @sm_mkoffset(%struct.sm_ftl* %91, i32 %92, i32 %93, i32 %94)
  %96 = call i32 @mtd_read_oob(%struct.mtd_info* %90, i32 %95, %struct.mtd_oob_ops* %15)
  store i32 %96, i32* %17, align 4
  %97 = load i32, i32* %17, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %89
  %100 = load i32, i32* %17, align 4
  %101 = call i32 @mtd_is_bitflip_or_eccerr(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %17, align 4
  %107 = call i32 (i8*, i32, i32, ...) @dbg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %104, i32 %105, i32 %106)
  br label %58

108:                                              ; preds = %99, %89
  %109 = load %struct.sm_oob*, %struct.sm_oob** %13, align 8
  %110 = getelementptr inbounds %struct.sm_oob, %struct.sm_oob* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, -1
  br i1 %112, label %113, label %121

113:                                              ; preds = %108
  %114 = load %struct.sm_oob*, %struct.sm_oob** %13, align 8
  %115 = getelementptr inbounds %struct.sm_oob, %struct.sm_oob* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = xor i32 %116, -1
  %118 = call i32 @is_power_of_2(i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %113
  br label %58

121:                                              ; preds = %113, %108
  %122 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %15, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @SM_OOB_SIZE, align 8
  %125 = icmp ne i64 %123, %124
  %126 = zext i1 %125 to i32
  %127 = call i32 @WARN_ON(i32 %126)
  %128 = load i32*, i32** %12, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %135

130:                                              ; preds = %121
  %131 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %15, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @SM_SECTOR_SIZE, align 8
  %134 = icmp ne i64 %132, %133
  br label %135

135:                                              ; preds = %130, %121
  %136 = phi i1 [ false, %121 ], [ %134, %130 ]
  %137 = zext i1 %136 to i32
  %138 = call i32 @WARN_ON(i32 %137)
  %139 = load i32*, i32** %12, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %135
  store i32 0, i32* %7, align 4
  br label %169

142:                                              ; preds = %135
  %143 = load %struct.sm_oob*, %struct.sm_oob** %13, align 8
  %144 = call i32 @sm_sector_valid(%struct.sm_oob* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %142
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %9, align 4
  %149 = call i32 (i8*, i32, i32, ...) @dbg(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %147, i32 %148)
  br label %58

150:                                              ; preds = %142
  %151 = load i32, i32* %17, align 4
  %152 = call i64 @mtd_is_eccerr(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %164, label %154

154:                                              ; preds = %150
  %155 = load %struct.sm_ftl*, %struct.sm_ftl** %8, align 8
  %156 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %168

159:                                              ; preds = %154
  %160 = load i32*, i32** %12, align 8
  %161 = load %struct.sm_oob*, %struct.sm_oob** %13, align 8
  %162 = call i64 @sm_correct_sector(i32* %160, %struct.sm_oob* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %159, %150
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* %9, align 4
  %167 = call i32 (i8*, i32, i32, ...) @dbg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %165, i32 %166)
  br label %58

168:                                              ; preds = %159, %154
  store i32 0, i32* %7, align 4
  br label %169

169:                                              ; preds = %168, %141, %86, %77, %28
  %170 = load i32, i32* %7, align 4
  ret i32 %170
}

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i64 @sm_recheck_media(%struct.sm_ftl*) #1

declare dso_local i32 @mtd_read_oob(%struct.mtd_info*, i32, %struct.mtd_oob_ops*) #1

declare dso_local i32 @sm_mkoffset(%struct.sm_ftl*, i32, i32, i32) #1

declare dso_local i32 @mtd_is_bitflip_or_eccerr(i32) #1

declare dso_local i32 @dbg(i8*, i32, i32, ...) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @sm_sector_valid(%struct.sm_oob*) #1

declare dso_local i64 @mtd_is_eccerr(i32) #1

declare dso_local i64 @sm_correct_sector(i32*, %struct.sm_oob*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
