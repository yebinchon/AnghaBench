; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_rx.c_carl9170_cmd_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_rx.c_carl9170_cmd_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32, i8*, i32, i32, i32*, %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"received invalid command response:got %d, instead of %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"carl9170 cmd:\00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"carl9170 rsp:\00", align 1
@CARL9170_RR_INVALID_RSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar9170*, i32, i8*)* @carl9170_cmd_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carl9170_cmd_callback(%struct.ar9170* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.ar9170*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.ar9170* %0, %struct.ar9170** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %8 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sub nsw i32 %10, 4
  %12 = icmp ne i32 %9, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %46

16:                                               ; preds = %3
  %17 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %18 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %17, i32 0, i32 6
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %5, align 4
  %22 = sub nsw i32 %21, 4
  %23 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %24 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_warn(i32* %20, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25)
  %27 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %28 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %29 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %32 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 4
  %37 = and i32 %36, 63
  %38 = call i32 @print_hex_dump_bytes(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %27, i8* %30, i32 %37)
  %39 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @print_hex_dump_bytes(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %39, i8* %40, i32 %41)
  %43 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %44 = load i32, i32* @CARL9170_RR_INVALID_RSP, align 4
  %45 = call i32 @carl9170_restart(%struct.ar9170* %43, i32 %44)
  br label %46

46:                                               ; preds = %16, %3
  %47 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %48 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %47, i32 0, i32 2
  %49 = call i32 @spin_lock(i32* %48)
  %50 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %51 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %69

54:                                               ; preds = %46
  %55 = load i32, i32* %5, align 4
  %56 = icmp sge i32 %55, 4
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %59 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr i8, i8* %61, i64 4
  %63 = load i32, i32* %5, align 4
  %64 = sub nsw i32 %63, 4
  %65 = call i32 @memcpy(i32* %60, i8* %62, i32 %64)
  br label %66

66:                                               ; preds = %57, %54
  %67 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %68 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %67, i32 0, i32 4
  store i32* null, i32** %68, align 8
  br label %69

69:                                               ; preds = %66, %46
  %70 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %71 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %70, i32 0, i32 3
  %72 = call i32 @complete(i32* %71)
  %73 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %74 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %73, i32 0, i32 2
  %75 = call i32 @spin_unlock(i32* %74)
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @print_hex_dump_bytes(i8*, i32, i8*, i32) #1

declare dso_local i32 @carl9170_restart(%struct.ar9170*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
