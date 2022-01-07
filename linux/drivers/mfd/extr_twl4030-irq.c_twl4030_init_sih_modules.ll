; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_twl4030-irq.c_twl4030_init_sih_modules.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_twl4030-irq.c_twl4030_init_sih_modules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sih = type { i32, i32, %struct.TYPE_2__*, i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@irq_line = common dso_local global i32 0, align 4
@sih_modules = common dso_local global %struct.sih* null, align 8
@nr_sih_modules = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"twl4030: err %d initializing %s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"IMR\00", align 1
@TWL4030_SIH_CTRL_COR_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"SIH_CTRL\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ISR\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"twl4030: write failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @twl4030_init_sih_modules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_init_sih_modules(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sih*, align 8
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ugt i32 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %178

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  store i32 %16, i32* @irq_line, align 4
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %18 = call i32 @memset(i32* %17, i32 255, i32 16)
  %19 = load %struct.sih*, %struct.sih** @sih_modules, align 8
  store %struct.sih* %19, %struct.sih** %4, align 8
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %86, %15
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @nr_sih_modules, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %91

24:                                               ; preds = %20
  %25 = load %struct.sih*, %struct.sih** %4, align 8
  %26 = getelementptr inbounds %struct.sih, %struct.sih* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %86

30:                                               ; preds = %24
  %31 = load %struct.sih*, %struct.sih** %4, align 8
  %32 = getelementptr inbounds %struct.sih, %struct.sih* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = icmp ule i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %86

37:                                               ; preds = %30
  %38 = load %struct.sih*, %struct.sih** %4, align 8
  %39 = getelementptr inbounds %struct.sih, %struct.sih* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %42 = load %struct.sih*, %struct.sih** %4, align 8
  %43 = getelementptr inbounds %struct.sih, %struct.sih* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sih*, %struct.sih** %4, align 8
  %51 = getelementptr inbounds %struct.sih, %struct.sih* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @twl_i2c_write(i32 %40, i32* %41, i32 %49, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %37
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.sih*, %struct.sih** %4, align 8
  %59 = getelementptr inbounds %struct.sih, %struct.sih* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %56, %37
  %63 = load %struct.sih*, %struct.sih** %4, align 8
  %64 = getelementptr inbounds %struct.sih, %struct.sih* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %62
  %68 = load %struct.sih*, %struct.sih** %4, align 8
  %69 = getelementptr inbounds %struct.sih, %struct.sih* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @TWL4030_SIH_CTRL_COR_MASK, align 4
  %72 = load %struct.sih*, %struct.sih** %4, align 8
  %73 = getelementptr inbounds %struct.sih, %struct.sih* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @twl_i2c_write_u8(i32 %70, i32 %71, i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %67
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.sih*, %struct.sih** %4, align 8
  %81 = getelementptr inbounds %struct.sih, %struct.sih* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %84

84:                                               ; preds = %78, %67
  br label %85

85:                                               ; preds = %84, %62
  br label %86

86:                                               ; preds = %85, %36, %29
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  %89 = load %struct.sih*, %struct.sih** %4, align 8
  %90 = getelementptr inbounds %struct.sih, %struct.sih* %89, i32 1
  store %struct.sih* %90, %struct.sih** %4, align 8
  br label %20

91:                                               ; preds = %20
  %92 = load %struct.sih*, %struct.sih** @sih_modules, align 8
  store %struct.sih* %92, %struct.sih** %4, align 8
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %172, %91
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @nr_sih_modules, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %177

97:                                               ; preds = %93
  %98 = load %struct.sih*, %struct.sih** %4, align 8
  %99 = getelementptr inbounds %struct.sih, %struct.sih* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %97
  br label %172

103:                                              ; preds = %97
  %104 = load %struct.sih*, %struct.sih** %4, align 8
  %105 = getelementptr inbounds %struct.sih, %struct.sih* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %3, align 4
  %108 = icmp ule i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %172

110:                                              ; preds = %103
  store i32 0, i32* %9, align 4
  br label %111

111:                                              ; preds = %168, %110
  %112 = load i32, i32* %9, align 4
  %113 = icmp slt i32 %112, 2
  br i1 %113, label %114, label %171

114:                                              ; preds = %111
  %115 = load %struct.sih*, %struct.sih** %4, align 8
  %116 = getelementptr inbounds %struct.sih, %struct.sih* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %119 = load %struct.sih*, %struct.sih** %4, align 8
  %120 = getelementptr inbounds %struct.sih, %struct.sih* %119, i32 0, i32 2
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = load i32, i32* %3, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.sih*, %struct.sih** %4, align 8
  %128 = getelementptr inbounds %struct.sih, %struct.sih* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @twl_i2c_read(i32 %117, i32* %118, i32 %126, i32 %129)
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %114
  %134 = load i32, i32* %7, align 4
  %135 = load %struct.sih*, %struct.sih** %4, align 8
  %136 = getelementptr inbounds %struct.sih, %struct.sih* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %134, i32 %137, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %139

139:                                              ; preds = %133, %114
  %140 = load %struct.sih*, %struct.sih** %4, align 8
  %141 = getelementptr inbounds %struct.sih, %struct.sih* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %167, label %144

144:                                              ; preds = %139
  %145 = load %struct.sih*, %struct.sih** %4, align 8
  %146 = getelementptr inbounds %struct.sih, %struct.sih* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %149 = load %struct.sih*, %struct.sih** %4, align 8
  %150 = getelementptr inbounds %struct.sih, %struct.sih* %149, i32 0, i32 2
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = load i32, i32* %3, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.sih*, %struct.sih** %4, align 8
  %158 = getelementptr inbounds %struct.sih, %struct.sih* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @twl_i2c_write(i32 %147, i32* %148, i32 %156, i32 %159)
  store i32 %160, i32* %7, align 4
  %161 = load i32, i32* %7, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %144
  %164 = load i32, i32* %7, align 4
  %165 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %164)
  br label %166

166:                                              ; preds = %163, %144
  br label %167

167:                                              ; preds = %166, %139
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %9, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %9, align 4
  br label %111

171:                                              ; preds = %111
  br label %172

172:                                              ; preds = %171, %109, %102
  %173 = load i32, i32* %6, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %6, align 4
  %175 = load %struct.sih*, %struct.sih** %4, align 8
  %176 = getelementptr inbounds %struct.sih, %struct.sih* %175, i32 1
  store %struct.sih* %176, %struct.sih** %4, align 8
  br label %93

177:                                              ; preds = %93
  store i32 0, i32* %2, align 4
  br label %178

178:                                              ; preds = %177, %12
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @twl_i2c_write(i32, i32*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i8*) #1

declare dso_local i32 @twl_i2c_write_u8(i32, i32, i32) #1

declare dso_local i32 @twl_i2c_read(i32, i32*, i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
