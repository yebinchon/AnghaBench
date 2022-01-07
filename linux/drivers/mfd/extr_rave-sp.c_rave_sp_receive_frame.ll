; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_rave-sp.c_rave_sp_receive_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_rave-sp.c_rave_sp_receive_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rave_sp = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 (i8*, i64, i8*)* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }

@RAVE_SP_CHECKSUM_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Checksum too long, dropping\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"rave-sp rx: \00", align 1
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Dropping short frame\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Dropping bad frame\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rave_sp*, i8*, i64)* @rave_sp_receive_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rave_sp_receive_frame(%struct.rave_sp* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.rave_sp*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.rave_sp* %0, %struct.rave_sp** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load %struct.rave_sp*, %struct.rave_sp** %4, align 8
  %15 = getelementptr inbounds %struct.rave_sp, %struct.rave_sp* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = sub i64 %21, %22
  store i64 %23, i64* %8, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  store i8* %26, i8** %9, align 8
  %27 = load %struct.rave_sp*, %struct.rave_sp** %4, align 8
  %28 = getelementptr inbounds %struct.rave_sp, %struct.rave_sp* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store %struct.device* %30, %struct.device** %10, align 8
  %31 = load i32, i32* @RAVE_SP_CHECKSUM_SIZE, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %11, align 8
  %34 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %12, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp ugt i64 %35, %32
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %3
  %41 = load %struct.device*, %struct.device** %10, align 8
  %42 = call i32 @dev_warn(%struct.device* %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  br label %92

43:                                               ; preds = %3
  %44 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @print_hex_dump_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 16, i32 1, i8* %45, i64 %46, i32 0)
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp ule i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %43
  %55 = load %struct.device*, %struct.device** %10, align 8
  %56 = call i32 @dev_warn(%struct.device* %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  br label %92

57:                                               ; preds = %43
  %58 = load %struct.rave_sp*, %struct.rave_sp** %4, align 8
  %59 = getelementptr inbounds %struct.rave_sp, %struct.rave_sp* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32 (i8*, i64, i8*)*, i32 (i8*, i64, i8*)** %63, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i32 %64(i8* %65, i64 %66, i8* %34)
  %68 = load i8*, i8** %9, align 8
  %69 = load i64, i64* %7, align 8
  %70 = call i64 @memcmp(i8* %34, i8* %68, i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %57
  %73 = load %struct.device*, %struct.device** %10, align 8
  %74 = call i32 @dev_warn(%struct.device* %73, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  br label %92

75:                                               ; preds = %57
  %76 = load i8*, i8** %5, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  %78 = load i8, i8* %77, align 1
  %79 = call i64 @rave_sp_id_is_event(i8 zeroext %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load %struct.rave_sp*, %struct.rave_sp** %4, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = load i64, i64* %6, align 8
  %85 = call i32 @rave_sp_receive_event(%struct.rave_sp* %82, i8* %83, i64 %84)
  br label %91

86:                                               ; preds = %75
  %87 = load %struct.rave_sp*, %struct.rave_sp** %4, align 8
  %88 = load i8*, i8** %5, align 8
  %89 = load i64, i64* %6, align 8
  %90 = call i32 @rave_sp_receive_reply(%struct.rave_sp* %87, i8* %88, i64 %89)
  br label %91

91:                                               ; preds = %86, %81
  store i32 0, i32* %13, align 4
  br label %92

92:                                               ; preds = %91, %72, %54, %40
  %93 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %93)
  %94 = load i32, i32* %13, align 4
  switch i32 %94, label %96 [
    i32 0, label %95
    i32 1, label %95
  ]

95:                                               ; preds = %92, %92
  ret void

96:                                               ; preds = %92
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @dev_warn(%struct.device*, i8*) #2

declare dso_local i32 @print_hex_dump_debug(i8*, i32, i32, i32, i8*, i64, i32) #2

declare dso_local i64 @memcmp(i8*, i8*, i64) #2

declare dso_local i64 @rave_sp_id_is_event(i8 zeroext) #2

declare dso_local i32 @rave_sp_receive_event(%struct.rave_sp*, i8*, i64) #2

declare dso_local i32 @rave_sp_receive_reply(%struct.rave_sp*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
