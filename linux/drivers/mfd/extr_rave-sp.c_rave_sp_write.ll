; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_rave-sp.c_rave_sp_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_rave-sp.c_rave_sp_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rave_sp = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 (i32*, i32, i8*)* }

@RAVE_SP_TX_BUFFER_SIZE = common dso_local global i32 0, align 4
@RAVE_SP_CHECKSUM_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RAVE_SP_STX = common dso_local global i32 0, align 4
@RAVE_SP_ETX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"rave-sp tx: \00", align 1
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rave_sp*, i32*, i32)* @rave_sp_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rave_sp_write(%struct.rave_sp* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rave_sp*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.rave_sp* %0, %struct.rave_sp** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.rave_sp*, %struct.rave_sp** %5, align 8
  %16 = getelementptr inbounds %struct.rave_sp, %struct.rave_sp* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = load i32, i32* @RAVE_SP_TX_BUFFER_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %9, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  %26 = load i32, i32* @RAVE_SP_CHECKSUM_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %11, align 8
  store i8* %25, i8** %12, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ugt i64 %29, %27
  %31 = zext i1 %30 to i32
  %32 = call i64 @WARN_ON(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %86

37:                                               ; preds = %3
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp ugt i64 %39, %23
  %41 = zext i1 %40 to i32
  %42 = call i64 @WARN_ON(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %86

47:                                               ; preds = %37
  %48 = load %struct.rave_sp*, %struct.rave_sp** %5, align 8
  %49 = getelementptr inbounds %struct.rave_sp, %struct.rave_sp* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32 (i32*, i32, i8*)*, i32 (i32*, i32, i8*)** %53, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 %54(i32* %55, i32 %56, i8* %28)
  %58 = load i32, i32* @RAVE_SP_STX, align 4
  %59 = trunc i32 %58 to i8
  %60 = load i8*, i8** %12, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %12, align 8
  store i8 %59, i8* %60, align 1
  %62 = load i8*, i8** %12, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i8* (i8*, ...) @stuff(i8* %62, i32* %63, i32 %64)
  store i8* %65, i8** %12, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = load i64, i64* %8, align 8
  %68 = call i8* (i8*, ...) @stuff(i8* %66, i8* %28, i64 %67)
  store i8* %68, i8** %12, align 8
  %69 = load i32, i32* @RAVE_SP_ETX, align 4
  %70 = trunc i32 %69 to i8
  %71 = load i8*, i8** %12, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %12, align 8
  store i8 %70, i8* %71, align 1
  %73 = load i8*, i8** %12, align 8
  %74 = ptrtoint i8* %73 to i64
  %75 = ptrtoint i8* %25 to i64
  %76 = sub i64 %74, %75
  store i64 %76, i64* %13, align 8
  %77 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %78 = load i64, i64* %13, align 8
  %79 = call i32 @print_hex_dump_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %77, i32 16, i32 1, i8* %25, i64 %78, i32 0)
  %80 = load %struct.rave_sp*, %struct.rave_sp** %5, align 8
  %81 = getelementptr inbounds %struct.rave_sp, %struct.rave_sp* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i64, i64* %13, align 8
  %84 = load i32, i32* @HZ, align 4
  %85 = call i32 @serdev_device_write(i32 %82, i8* %25, i64 %83, i32 %84)
  store i32 %85, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %86

86:                                               ; preds = %47, %44, %34
  %87 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @WARN_ON(i32) #2

declare dso_local i8* @stuff(i8*, ...) #2

declare dso_local i32 @print_hex_dump_debug(i8*, i32, i32, i32, i8*, i64, i32) #2

declare dso_local i32 @serdev_device_write(i32, i8*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
