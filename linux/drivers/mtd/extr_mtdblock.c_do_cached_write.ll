; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdblock.c_do_cached_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdblock.c_do_cached_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtdblk_dev = type { i32, i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mtd_info* }
%struct.mtd_info = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"mtdblock: write on \22%s\22 at 0x%lx, size 0x%x\0A\00", align 1
@STATE_DIRTY = common dso_local global i64 0, align 8
@STATE_EMPTY = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@STATE_CLEAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtdblk_dev*, i64, i32, i8*)* @do_cached_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_cached_write(%struct.mtdblk_dev* %0, i64 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtdblk_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mtd_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mtdblk_dev* %0, %struct.mtdblk_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %17 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %6, align 8
  %18 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.mtd_info*, %struct.mtd_info** %19, align 8
  store %struct.mtd_info* %20, %struct.mtd_info** %10, align 8
  %21 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %6, align 8
  %22 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %11, align 4
  %24 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %25 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %26, i64 %27, i32 %28)
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %4
  %33 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @mtd_write(%struct.mtd_info* %33, i64 %34, i32 %35, i64* %12, i8* %36)
  store i32 %37, i32* %5, align 4
  br label %167

38:                                               ; preds = %4
  br label %39

39:                                               ; preds = %154, %38
  %40 = load i32, i32* %8, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %166

42:                                               ; preds = %39
  %43 = load i64, i64* %7, align 8
  %44 = load i32, i32* %11, align 4
  %45 = zext i32 %44 to i64
  %46 = udiv i64 %43, %45
  %47 = load i32, i32* %11, align 4
  %48 = zext i32 %47 to i64
  %49 = mul i64 %46, %48
  store i64 %49, i64* %14, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %14, align 8
  %52 = sub i64 %50, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %15, align 4
  %56 = sub i32 %54, %55
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ugt i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %42
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %16, align 4
  br label %62

62:                                               ; preds = %60, %42
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %62
  %67 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load i32, i32* %16, align 4
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 @erase_write(%struct.mtd_info* %67, i64 %68, i32 %69, i8* %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* %5, align 4
  br label %167

76:                                               ; preds = %66
  br label %154

77:                                               ; preds = %62
  %78 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %6, align 8
  %79 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @STATE_DIRTY, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %97

83:                                               ; preds = %77
  %84 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %6, align 8
  %85 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %14, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %6, align 8
  %91 = call i32 @write_cached_data(%struct.mtdblk_dev* %90)
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %5, align 4
  br label %167

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96, %83, %77
  %98 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %6, align 8
  %99 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @STATE_EMPTY, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %109, label %103

103:                                              ; preds = %97
  %104 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %6, align 8
  %105 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %14, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %142

109:                                              ; preds = %103, %97
  %110 = load i64, i64* @STATE_EMPTY, align 8
  %111 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %6, align 8
  %112 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %111, i32 0, i32 1
  store i64 %110, i64* %112, align 8
  %113 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %114 = load i64, i64* %14, align 8
  %115 = load i32, i32* %11, align 4
  %116 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %6, align 8
  %117 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @mtd_read(%struct.mtd_info* %113, i64 %114, i32 %115, i64* %12, i32 %118)
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %13, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %109
  %123 = load i32, i32* %13, align 4
  store i32 %123, i32* %5, align 4
  br label %167

124:                                              ; preds = %109
  %125 = load i64, i64* %12, align 8
  %126 = load i32, i32* %11, align 4
  %127 = zext i32 %126 to i64
  %128 = icmp ne i64 %125, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load i32, i32* @EIO, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %5, align 4
  br label %167

132:                                              ; preds = %124
  %133 = load i64, i64* %14, align 8
  %134 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %6, align 8
  %135 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %134, i32 0, i32 2
  store i64 %133, i64* %135, align 8
  %136 = load i32, i32* %11, align 4
  %137 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %6, align 8
  %138 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load i64, i64* @STATE_CLEAN, align 8
  %140 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %6, align 8
  %141 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %140, i32 0, i32 1
  store i64 %139, i64* %141, align 8
  br label %142

142:                                              ; preds = %132, %103
  %143 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %6, align 8
  %144 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %15, align 4
  %147 = add i32 %145, %146
  %148 = load i8*, i8** %9, align 8
  %149 = load i32, i32* %16, align 4
  %150 = call i32 @memcpy(i32 %147, i8* %148, i32 %149)
  %151 = load i64, i64* @STATE_DIRTY, align 8
  %152 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %6, align 8
  %153 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %152, i32 0, i32 1
  store i64 %151, i64* %153, align 8
  br label %154

154:                                              ; preds = %142, %76
  %155 = load i32, i32* %16, align 4
  %156 = load i8*, i8** %9, align 8
  %157 = zext i32 %155 to i64
  %158 = getelementptr inbounds i8, i8* %156, i64 %157
  store i8* %158, i8** %9, align 8
  %159 = load i32, i32* %16, align 4
  %160 = zext i32 %159 to i64
  %161 = load i64, i64* %7, align 8
  %162 = add i64 %161, %160
  store i64 %162, i64* %7, align 8
  %163 = load i32, i32* %16, align 4
  %164 = load i32, i32* %8, align 4
  %165 = sub i32 %164, %163
  store i32 %165, i32* %8, align 4
  br label %39

166:                                              ; preds = %39
  store i32 0, i32* %5, align 4
  br label %167

167:                                              ; preds = %166, %129, %122, %94, %74, %32
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

declare dso_local i32 @pr_debug(i8*, i32, i64, i32) #1

declare dso_local i32 @mtd_write(%struct.mtd_info*, i64, i32, i64*, i8*) #1

declare dso_local i32 @erase_write(%struct.mtd_info*, i64, i32, i8*) #1

declare dso_local i32 @write_cached_data(%struct.mtdblk_dev*) #1

declare dso_local i32 @mtd_read(%struct.mtd_info*, i64, i32, i64*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
