; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_io.c_ubi_io_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_io.c_ubi_io_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [28 x i8] c"write %d bytes to PEB %d:%d\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"read-only mode\00", align 1
@EROFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"cannot write %d bytes to PEB %d:%d (emulated)\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [64 x i8] c"error %d while writing %d bytes to PEB %d:%d, written %zd bytes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_io_write(%struct.ubi_device* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubi_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @dbg_io(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* %9, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %24 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br label %27

27:                                               ; preds = %21, %5
  %28 = phi i1 [ false, %5 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @ubi_assert(i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %34, %35
  %37 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %38 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sle i32 %36, %39
  br label %41

41:                                               ; preds = %33, %27
  %42 = phi i1 [ false, %27 ], [ %40, %33 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @ubi_assert(i32 %43)
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %47 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = srem i32 %45, %48
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @ubi_assert(i32 %51)
  %53 = load i32, i32* %11, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %41
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %58 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = srem i32 %56, %59
  %61 = icmp eq i32 %60, 0
  br label %62

62:                                               ; preds = %55, %41
  %63 = phi i1 [ false, %41 ], [ %61, %55 ]
  %64 = zext i1 %63 to i32
  %65 = call i32 @ubi_assert(i32 %64)
  %66 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %67 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %62
  %71 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %72 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @EROFS, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %6, align 4
  br label %201

75:                                               ; preds = %62
  %76 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @self_check_not_bad(%struct.ubi_device* %76, i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %6, align 4
  br label %201

83:                                               ; preds = %75
  %84 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @ubi_self_check_all_ff(%struct.ubi_device* %84, i32 %85, i32 %86, i32 %87)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %6, align 4
  br label %201

93:                                               ; preds = %83
  %94 = load i32, i32* %10, align 4
  %95 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %96 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = icmp sge i32 %94, %97
  br i1 %98, label %99, label %116

99:                                               ; preds = %93
  %100 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @self_check_peb_ec_hdr(%struct.ubi_device* %100, i32 %101)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %6, align 4
  br label %201

107:                                              ; preds = %99
  %108 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @self_check_peb_vid_hdr(%struct.ubi_device* %108, i32 %109)
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = load i32, i32* %12, align 4
  store i32 %114, i32* %6, align 4
  br label %201

115:                                              ; preds = %107
  br label %116

116:                                              ; preds = %115, %93
  %117 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %118 = call i64 @ubi_dbg_is_write_failure(%struct.ubi_device* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %116
  %121 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %10, align 4
  %125 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %121, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %122, i32 %123, i32 %124)
  %126 = call i32 (...) @dump_stack()
  %127 = load i32, i32* @EIO, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %6, align 4
  br label %201

129:                                              ; preds = %116
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %132 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = mul nsw i32 %130, %133
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %134, %135
  store i32 %136, i32* %14, align 4
  %137 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %138 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* %11, align 4
  %142 = load i8*, i8** %8, align 8
  %143 = call i32 @mtd_write(i32 %139, i32 %140, i32 %141, i64* %13, i8* %142)
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %12, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %160

146:                                              ; preds = %129
  %147 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %10, align 4
  %152 = load i64, i64* %13, align 8
  %153 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %147, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32 %148, i32 %149, i32 %150, i32 %151, i64 %152)
  %154 = call i32 (...) @dump_stack()
  %155 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* %11, align 4
  %159 = call i32 @ubi_dump_flash(%struct.ubi_device* %155, i32 %156, i32 %157, i32 %158)
  br label %167

160:                                              ; preds = %129
  %161 = load i64, i64* %13, align 8
  %162 = load i32, i32* %11, align 4
  %163 = sext i32 %162 to i64
  %164 = icmp eq i64 %161, %163
  %165 = zext i1 %164 to i32
  %166 = call i32 @ubi_assert(i32 %165)
  br label %167

167:                                              ; preds = %160, %146
  %168 = load i32, i32* %12, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %199, label %170

170:                                              ; preds = %167
  %171 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %172 = load i8*, i8** %8, align 8
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* %11, align 4
  %176 = call i32 @self_check_write(%struct.ubi_device* %171, i8* %172, i32 %173, i32 %174, i32 %175)
  store i32 %176, i32* %12, align 4
  %177 = load i32, i32* %12, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %170
  %180 = load i32, i32* %12, align 4
  store i32 %180, i32* %6, align 4
  br label %201

181:                                              ; preds = %170
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* %10, align 4
  %184 = add nsw i32 %183, %182
  store i32 %184, i32* %10, align 4
  %185 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %186 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %10, align 4
  %189 = sub nsw i32 %187, %188
  store i32 %189, i32* %11, align 4
  %190 = load i32, i32* %11, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %181
  %193 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %194 = load i32, i32* %9, align 4
  %195 = load i32, i32* %10, align 4
  %196 = load i32, i32* %11, align 4
  %197 = call i32 @ubi_self_check_all_ff(%struct.ubi_device* %193, i32 %194, i32 %195, i32 %196)
  store i32 %197, i32* %12, align 4
  br label %198

198:                                              ; preds = %192, %181
  br label %199

199:                                              ; preds = %198, %167
  %200 = load i32, i32* %12, align 4
  store i32 %200, i32* %6, align 4
  br label %201

201:                                              ; preds = %199, %179, %120, %113, %105, %91, %81, %70
  %202 = load i32, i32* %6, align 4
  ret i32 %202
}

declare dso_local i32 @dbg_io(i8*, i32, i32, i32) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*, ...) #1

declare dso_local i32 @self_check_not_bad(%struct.ubi_device*, i32) #1

declare dso_local i32 @ubi_self_check_all_ff(%struct.ubi_device*, i32, i32, i32) #1

declare dso_local i32 @self_check_peb_ec_hdr(%struct.ubi_device*, i32) #1

declare dso_local i32 @self_check_peb_vid_hdr(%struct.ubi_device*, i32) #1

declare dso_local i64 @ubi_dbg_is_write_failure(%struct.ubi_device*) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @mtd_write(i32, i32, i32, i64*, i8*) #1

declare dso_local i32 @ubi_dump_flash(%struct.ubi_device*, i32, i32, i32) #1

declare dso_local i32 @self_check_write(%struct.ubi_device*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
