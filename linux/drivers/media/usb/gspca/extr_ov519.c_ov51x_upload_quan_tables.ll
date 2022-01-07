; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_ov51x_upload_quan_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_ov51x_upload_quan_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i64 }
%struct.gspca_dev = type { i32 }

@ov51x_upload_quan_tables.yQuanTable511 = internal constant [64 x i8] c"\00\01\01\02\02\03\03\04\01\01\01\02\02\03\04\04\01\01\02\02\03\04\04\04\02\02\02\03\04\04\04\04\02\02\03\04\04\05\05\05\03\03\04\04\05\05\05\05\03\04\04\04\05\05\05\05\04\04\04\04\05\05\05\05", align 16
@ov51x_upload_quan_tables.uvQuanTable511 = internal constant [64 x i8] c"\00\02\02\03\04\04\04\04\02\02\02\04\04\04\04\04\02\02\03\04\04\04\04\04\03\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04", align 16
@ov51x_upload_quan_tables.yQuanTable518 = internal constant [32 x i8] c"\05\04\05\06\06\07\07\07\05\05\05\05\06\07\07\07\06\06\06\06\07\07\07\08\07\07\06\07\07\07\08\08", align 16
@ov51x_upload_quan_tables.uvQuanTable518 = internal constant [32 x i8] c"\06\06\06\07\07\07\07\07\06\06\06\07\07\07\07\07\06\06\06\07\07\07\07\08\07\07\07\07\07\07\08\08", align 16
@R51x_COMP_LUT_BEGIN = common dso_local global i32 0, align 4
@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Uploading quantization tables\0A\00", align 1
@BRIDGE_OV511 = common dso_local global i64 0, align 8
@BRIDGE_OV511PLUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @ov51x_upload_quan_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov51x_upload_quan_tables(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %2, align 8
  %11 = load %struct.sd*, %struct.sd** %2, align 8
  %12 = bitcast %struct.sd* %11 to %struct.gspca_dev*
  store %struct.gspca_dev* %12, %struct.gspca_dev** %3, align 8
  %13 = load i32, i32* @R51x_COMP_LUT_BEGIN, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %15 = load i32, i32* @D_PROBE, align 4
  %16 = call i32 @gspca_dbg(%struct.gspca_dev* %14, i32 %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.sd*, %struct.sd** %2, align 8
  %18 = getelementptr inbounds %struct.sd, %struct.sd* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @BRIDGE_OV511, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %1
  %23 = load %struct.sd*, %struct.sd** %2, align 8
  %24 = getelementptr inbounds %struct.sd, %struct.sd* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @BRIDGE_OV511PLUS, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %1
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @ov51x_upload_quan_tables.yQuanTable511, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @ov51x_upload_quan_tables.uvQuanTable511, i64 0, i64 0), i8** %5, align 8
  store i32 32, i32* %9, align 4
  br label %30

29:                                               ; preds = %22
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @ov51x_upload_quan_tables.yQuanTable518, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @ov51x_upload_quan_tables.uvQuanTable518, i64 0, i64 0), i8** %5, align 8
  store i32 16, i32* %9, align 4
  br label %30

30:                                               ; preds = %29, %28
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %90, %30
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %93

35:                                               ; preds = %31
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %4, align 8
  %38 = load i8, i8* %36, align 1
  store i8 %38, i8* %6, align 1
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %4, align 8
  %41 = load i8, i8* %39, align 1
  store i8 %41, i8* %7, align 1
  %42 = load i8, i8* %6, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %43, 15
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %6, align 1
  %46 = load i8, i8* %7, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %47, 15
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %7, align 1
  %50 = load i8, i8* %7, align 1
  %51 = zext i8 %50 to i32
  %52 = shl i32 %51, 4
  %53 = load i8, i8* %6, align 1
  %54 = zext i8 %53 to i32
  %55 = or i32 %54, %52
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %6, align 1
  %57 = load %struct.sd*, %struct.sd** %2, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i8, i8* %6, align 1
  %60 = call i32 @reg_w(%struct.sd* %57, i32 %58, i8 zeroext %59)
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %5, align 8
  %63 = load i8, i8* %61, align 1
  store i8 %63, i8* %6, align 1
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %5, align 8
  %66 = load i8, i8* %64, align 1
  store i8 %66, i8* %7, align 1
  %67 = load i8, i8* %6, align 1
  %68 = zext i8 %67 to i32
  %69 = and i32 %68, 15
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %6, align 1
  %71 = load i8, i8* %7, align 1
  %72 = zext i8 %71 to i32
  %73 = and i32 %72, 15
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %7, align 1
  %75 = load i8, i8* %7, align 1
  %76 = zext i8 %75 to i32
  %77 = shl i32 %76, 4
  %78 = load i8, i8* %6, align 1
  %79 = zext i8 %78 to i32
  %80 = or i32 %79, %77
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %6, align 1
  %82 = load %struct.sd*, %struct.sd** %2, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %83, %84
  %86 = load i8, i8* %6, align 1
  %87 = call i32 @reg_w(%struct.sd* %82, i32 %85, i8 zeroext %86)
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %35
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %31

93:                                               ; preds = %31
  ret void
}

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*) #1

declare dso_local i32 @reg_w(%struct.sd*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
