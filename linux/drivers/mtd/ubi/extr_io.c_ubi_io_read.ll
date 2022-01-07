; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_io.c_ubi_io_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_io.c_ubi_io_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"read %d bytes from PEB %d:%d\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c" (ECC error)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"fixable bit-flip detected at PEB %d\00", align 1
@UBI_IO_BITFLIPS = common dso_local global i32 0, align 4
@UBI_IO_RETRIES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [77 x i8] c"error %d%s while reading %d bytes from PEB %d:%d, read only %zd bytes, retry\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"error %d%s while reading %d bytes from PEB %d:%d, read %zd bytes\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"bit-flip (emulated)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_io_read(%struct.ubi_device* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubi_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @dbg_io(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* %9, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %5
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %26 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br label %29

29:                                               ; preds = %23, %5
  %30 = phi i1 [ false, %5 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @ubi_assert(i32 %31)
  %33 = load i32, i32* %10, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %36, %37
  %39 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %40 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp sle i32 %38, %41
  br label %43

43:                                               ; preds = %35, %29
  %44 = phi i1 [ false, %29 ], [ %42, %35 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @ubi_assert(i32 %45)
  %47 = load i32, i32* %11, align 4
  %48 = icmp sgt i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @ubi_assert(i32 %49)
  %51 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @self_check_not_bad(%struct.ubi_device* %51, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %43
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %6, align 4
  br label %154

58:                                               ; preds = %43
  %59 = load i8*, i8** %8, align 8
  %60 = bitcast i8* %59 to i32*
  %61 = load i32, i32* %60, align 4
  %62 = xor i32 %61, 255
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %65 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %63, %66
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %67, %68
  store i32 %69, i32* %15, align 4
  br label %70

70:                                               ; preds = %105, %58
  %71 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %72 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @mtd_read(i32 %73, i32 %74, i32 %75, i64* %14, i8* %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %138

80:                                               ; preds = %70
  %81 = load i32, i32* %12, align 4
  %82 = call i64 @mtd_is_eccerr(i32 %81)
  %83 = icmp ne i64 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  store i8* %85, i8** %16, align 8
  %86 = load i32, i32* %12, align 4
  %87 = call i64 @mtd_is_bitflip(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %80
  %90 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @ubi_msg(%struct.ubi_device* %90, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* %14, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @ubi_assert(i32 %97)
  %99 = load i32, i32* @UBI_IO_BITFLIPS, align 4
  store i32 %99, i32* %6, align 4
  br label %154

100:                                              ; preds = %80
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* @UBI_IO_RETRIES, align 4
  %104 = icmp slt i32 %101, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %100
  %106 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %107 = load i32, i32* %12, align 4
  %108 = load i8*, i8** %16, align 8
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load i64, i64* %14, align 8
  %113 = call i32 @ubi_warn(%struct.ubi_device* %106, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.4, i64 0, i64 0), i32 %107, i8* %108, i32 %109, i32 %110, i32 %111, i64 %112)
  %114 = call i32 (...) @yield()
  br label %70

115:                                              ; preds = %100
  %116 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %117 = load i32, i32* %12, align 4
  %118 = load i8*, i8** %16, align 8
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load i64, i64* %14, align 8
  %123 = call i32 @ubi_err(%struct.ubi_device* %116, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0), i32 %117, i8* %118, i32 %119, i32 %120, i32 %121, i64 %122)
  %124 = call i32 (...) @dump_stack()
  %125 = load i64, i64* %14, align 8
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = icmp ne i64 %125, %127
  br i1 %128, label %129, label %137

129:                                              ; preds = %115
  %130 = load i32, i32* %12, align 4
  %131 = call i64 @mtd_is_eccerr(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = call i32 @ubi_assert(i32 0)
  %135 = load i32, i32* @EIO, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %12, align 4
  br label %137

137:                                              ; preds = %133, %129, %115
  br label %152

138:                                              ; preds = %70
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = load i64, i64* %14, align 8
  %142 = icmp eq i64 %140, %141
  %143 = zext i1 %142 to i32
  %144 = call i32 @ubi_assert(i32 %143)
  %145 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %146 = call i64 @ubi_dbg_is_bitflip(%struct.ubi_device* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %138
  %149 = call i32 @dbg_gen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %150 = load i32, i32* @UBI_IO_BITFLIPS, align 4
  store i32 %150, i32* %12, align 4
  br label %151

151:                                              ; preds = %148, %138
  br label %152

152:                                              ; preds = %151, %137
  %153 = load i32, i32* %12, align 4
  store i32 %153, i32* %6, align 4
  br label %154

154:                                              ; preds = %152, %89, %56
  %155 = load i32, i32* %6, align 4
  ret i32 %155
}

declare dso_local i32 @dbg_io(i8*, i32, i32, i32) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @self_check_not_bad(%struct.ubi_device*, i32) #1

declare dso_local i32 @mtd_read(i32, i32, i32, i64*, i8*) #1

declare dso_local i64 @mtd_is_eccerr(i32) #1

declare dso_local i64 @mtd_is_bitflip(i32) #1

declare dso_local i32 @ubi_msg(%struct.ubi_device*, i8*, i32) #1

declare dso_local i32 @ubi_warn(%struct.ubi_device*, i8*, i32, i8*, i32, i32, i32, i64) #1

declare dso_local i32 @yield(...) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*, i32, i8*, i32, i32, i32, i64) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i64 @ubi_dbg_is_bitflip(%struct.ubi_device*) #1

declare dso_local i32 @dbg_gen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
