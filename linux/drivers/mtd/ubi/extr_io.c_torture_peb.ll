; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_io.c_torture_peb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_io.c_torture_peb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"run torture test for PEB %d\00", align 1
@patterns = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"erased PEB %d, but a non-0xFF byte found\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"pattern %x checking failed for PEB %d\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"PEB %d passed torture test, do not mark it as bad\00", align 1
@UBI_IO_BITFLIPS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"read problems on freshly erased PEB %d, must be bad\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, i32)* @torture_peb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @torture_peb(%struct.ubi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ubi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @ubi_msg(%struct.ubi_device* %8, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32*, i32** @patterns, align 8
  %12 = call i32 @ARRAY_SIZE(i32* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @ubi_assert(i32 %15)
  %17 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %18 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %138, %2
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %141

24:                                               ; preds = %20
  %25 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @do_sync_erase(%struct.ubi_device* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %146

31:                                               ; preds = %24
  %32 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %33 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %34 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %38 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ubi_io_read(%struct.ubi_device* %32, i32 %35, i32 %36, i32 0, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  br label %146

44:                                               ; preds = %31
  %45 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %46 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %49 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ubi_check_pattern(i32 %47, i32 255, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %44
  %55 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_err(%struct.ubi_device* %55, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %146

60:                                               ; preds = %44
  %61 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %62 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** @patterns, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %70 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @memset(i32 %63, i32 %68, i32 %71)
  %73 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %74 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %75 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %79 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ubi_io_write(%struct.ubi_device* %73, i32 %76, i32 %77, i32 0, i32 %80)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %60
  br label %146

85:                                               ; preds = %60
  %86 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %87 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** @patterns, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = xor i32 %93, -1
  %95 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %96 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @memset(i32 %88, i32 %94, i32 %97)
  %99 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %100 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %101 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %4, align 4
  %104 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %105 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ubi_io_read(%struct.ubi_device* %99, i32 %102, i32 %103, i32 0, i32 %106)
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %85
  br label %146

111:                                              ; preds = %85
  %112 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %113 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** @patterns, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %121 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @ubi_check_pattern(i32 %114, i32 %119, i32 %122)
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* %5, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %111
  %127 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %128 = load i32*, i32** @patterns, align 8
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %4, align 4
  %134 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_err(%struct.ubi_device* %127, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %132, i32 %133)
  %135 = load i32, i32* @EIO, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %5, align 4
  br label %146

137:                                              ; preds = %111
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %6, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %6, align 4
  br label %20

141:                                              ; preds = %20
  %142 = load i32, i32* %7, align 4
  store i32 %142, i32* %5, align 4
  %143 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %144 = load i32, i32* %4, align 4
  %145 = call i32 @ubi_msg(%struct.ubi_device* %143, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %144)
  br label %146

146:                                              ; preds = %141, %126, %110, %84, %54, %43, %30
  %147 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %148 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %147, i32 0, i32 0
  %149 = call i32 @mutex_unlock(i32* %148)
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* @UBI_IO_BITFLIPS, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %157, label %153

153:                                              ; preds = %146
  %154 = load i32, i32* %5, align 4
  %155 = call i64 @mtd_is_eccerr(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %153, %146
  %158 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %159 = load i32, i32* %4, align 4
  %160 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_err(%struct.ubi_device* %158, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %159)
  %161 = load i32, i32* @EIO, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %5, align 4
  br label %163

163:                                              ; preds = %157, %153
  %164 = load i32, i32* %5, align 4
  ret i32 %164
}

declare dso_local i32 @ubi_msg(%struct.ubi_device*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @do_sync_erase(%struct.ubi_device*, i32) #1

declare dso_local i32 @ubi_io_read(%struct.ubi_device*, i32, i32, i32, i32) #1

declare dso_local i32 @ubi_check_pattern(i32, i32, i32) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*, i32, ...) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ubi_io_write(%struct.ubi_device*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @mtd_is_eccerr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
