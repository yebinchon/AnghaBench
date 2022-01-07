; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_rave-sp.c_rave_sp_receive_reply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_rave-sp.c_rave_sp_receive_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rave_sp = type { i32, %struct.rave_sp_reply*, %struct.TYPE_2__* }
%struct.rave_sp_reply = type { i8, i8, i64, i32, i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Ignoring incorrect reply\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Code:   expected = 0x%08x received = 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"ACK ID: expected = 0x%08x received = 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Length: expected = %zu received = %zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rave_sp*, i8*, i64)* @rave_sp_receive_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rave_sp_receive_reply(%struct.rave_sp* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.rave_sp*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.rave_sp_reply*, align 8
  %9 = alloca i64, align 8
  store %struct.rave_sp* %0, %struct.rave_sp** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.rave_sp*, %struct.rave_sp** %4, align 8
  %11 = getelementptr inbounds %struct.rave_sp, %struct.rave_sp* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = sub i64 %14, 2
  store i64 %15, i64* %9, align 8
  %16 = load %struct.rave_sp*, %struct.rave_sp** %4, align 8
  %17 = getelementptr inbounds %struct.rave_sp, %struct.rave_sp* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.rave_sp*, %struct.rave_sp** %4, align 8
  %20 = getelementptr inbounds %struct.rave_sp, %struct.rave_sp* %19, i32 0, i32 1
  %21 = load %struct.rave_sp_reply*, %struct.rave_sp_reply** %20, align 8
  store %struct.rave_sp_reply* %21, %struct.rave_sp_reply** %8, align 8
  %22 = load %struct.rave_sp_reply*, %struct.rave_sp_reply** %8, align 8
  %23 = icmp ne %struct.rave_sp_reply* %22, null
  br i1 %23, label %24, label %94

24:                                               ; preds = %3
  %25 = load %struct.rave_sp_reply*, %struct.rave_sp_reply** %8, align 8
  %26 = getelementptr inbounds %struct.rave_sp_reply, %struct.rave_sp_reply* %25, i32 0, i32 0
  %27 = load i8, i8* %26, align 8
  %28 = zext i8 %27 to i32
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %28, %32
  br i1 %33, label %34, label %65

34:                                               ; preds = %24
  %35 = load %struct.rave_sp_reply*, %struct.rave_sp_reply** %8, align 8
  %36 = getelementptr inbounds %struct.rave_sp_reply, %struct.rave_sp_reply* %35, i32 0, i32 1
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %38, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %34
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.rave_sp_reply*, %struct.rave_sp_reply** %8, align 8
  %47 = getelementptr inbounds %struct.rave_sp_reply, %struct.rave_sp_reply* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp uge i64 %45, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %44
  %51 = load %struct.rave_sp_reply*, %struct.rave_sp_reply** %8, align 8
  %52 = getelementptr inbounds %struct.rave_sp_reply, %struct.rave_sp_reply* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %5, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 2
  %56 = load %struct.rave_sp_reply*, %struct.rave_sp_reply** %8, align 8
  %57 = getelementptr inbounds %struct.rave_sp_reply, %struct.rave_sp_reply* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @memcpy(i32 %53, i8* %55, i64 %58)
  %60 = load %struct.rave_sp_reply*, %struct.rave_sp_reply** %8, align 8
  %61 = getelementptr inbounds %struct.rave_sp_reply, %struct.rave_sp_reply* %60, i32 0, i32 3
  %62 = call i32 @complete(i32* %61)
  %63 = load %struct.rave_sp*, %struct.rave_sp** %4, align 8
  %64 = getelementptr inbounds %struct.rave_sp, %struct.rave_sp* %63, i32 0, i32 1
  store %struct.rave_sp_reply* null, %struct.rave_sp_reply** %64, align 8
  br label %93

65:                                               ; preds = %44, %34, %24
  %66 = load %struct.device*, %struct.device** %7, align 8
  %67 = call i32 @dev_err(%struct.device* %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %68 = load %struct.device*, %struct.device** %7, align 8
  %69 = load %struct.rave_sp_reply*, %struct.rave_sp_reply** %8, align 8
  %70 = getelementptr inbounds %struct.rave_sp_reply, %struct.rave_sp_reply* %69, i32 0, i32 0
  %71 = load i8, i8* %70, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i64
  %76 = call i32 @dev_dbg(%struct.device* %68, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %71, i64 %75)
  %77 = load %struct.device*, %struct.device** %7, align 8
  %78 = load %struct.rave_sp_reply*, %struct.rave_sp_reply** %8, align 8
  %79 = getelementptr inbounds %struct.rave_sp_reply, %struct.rave_sp_reply* %78, i32 0, i32 1
  %80 = load i8, i8* %79, align 1
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i64
  %85 = call i32 @dev_dbg(%struct.device* %77, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %80, i64 %84)
  %86 = load %struct.device*, %struct.device** %7, align 8
  %87 = load %struct.rave_sp_reply*, %struct.rave_sp_reply** %8, align 8
  %88 = getelementptr inbounds %struct.rave_sp_reply, %struct.rave_sp_reply* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i8
  %91 = load i64, i64* %9, align 8
  %92 = call i32 @dev_dbg(%struct.device* %86, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8 zeroext %90, i64 %91)
  br label %93

93:                                               ; preds = %65, %50
  br label %94

94:                                               ; preds = %93, %3
  %95 = load %struct.rave_sp*, %struct.rave_sp** %4, align 8
  %96 = getelementptr inbounds %struct.rave_sp, %struct.rave_sp* %95, i32 0, i32 0
  %97 = call i32 @mutex_unlock(i32* %96)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8 zeroext, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
