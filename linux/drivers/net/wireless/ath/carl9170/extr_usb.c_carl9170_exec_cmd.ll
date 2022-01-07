; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_exec_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_exec_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32, i32, i32*, %struct.TYPE_7__, %struct.TYPE_6__*, i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@CARL9170_CMD_ASYNC_FLAG = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"no command feedback received (%d).\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"carl9170 cmd: \00", align 1
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
@CARL9170_RR_COMMAND_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @carl9170_exec_cmd(%struct.ar9170* %0, i32 %1, i32 %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ar9170*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.ar9170* %0, %struct.ar9170** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %14, align 4
  %18 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %19 = call i32 @IS_ACCEPTING_CMD(%struct.ar9170* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %138

24:                                               ; preds = %6
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @CARL9170_CMD_ASYNC_FLAG, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = call i32 (...) @might_sleep()
  br label %31

31:                                               ; preds = %29, %24
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %34 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %39 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %31
  %45 = load i8*, i8** %11, align 8
  %46 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %47 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = icmp ne i8* %45, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %44
  %53 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %54 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @memcpy(i64 %56, i8* %57, i32 %58)
  br label %60

60:                                               ; preds = %52, %44, %31
  %61 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %62 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %61, i32 0, i32 1
  %63 = call i32 @spin_lock_bh(i32* %62)
  %64 = load i8*, i8** %13, align 8
  %65 = bitcast i8* %64 to i32*
  %66 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %67 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %66, i32 0, i32 2
  store i32* %65, i32** %67, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %70 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %72 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %71, i32 0, i32 1
  %73 = call i32 @spin_unlock_bh(i32* %72)
  %74 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %75 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %74, i32 0, i32 5
  %76 = call i32 @reinit_completion(i32* %75)
  %77 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %78 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %79 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %78, i32 0, i32 3
  %80 = call i32 @__carl9170_exec_cmd(%struct.ar9170* %77, %struct.TYPE_7__* %79, i32 0)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @CARL9170_CMD_ASYNC_FLAG, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %105, label %85

85:                                               ; preds = %60
  %86 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %87 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %86, i32 0, i32 5
  %88 = load i32, i32* @HZ, align 4
  %89 = call i64 @wait_for_completion_timeout(i32* %87, i32 %88)
  store i64 %89, i64* %15, align 8
  %90 = load i64, i64* %15, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load i32, i32* @ETIMEDOUT, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %14, align 4
  br label %106

95:                                               ; preds = %85
  %96 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %97 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load i32, i32* @EMSGSIZE, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %14, align 4
  br label %106

104:                                              ; preds = %95
  br label %105

105:                                              ; preds = %104, %60
  store i32 0, i32* %7, align 4
  br label %138

106:                                              ; preds = %101, %92
  %107 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %108 = call i64 @IS_STARTED(%struct.ar9170* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %126

110:                                              ; preds = %106
  %111 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %112 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %111, i32 0, i32 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %14, align 4
  %116 = call i32 @dev_err(i32* %114, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %118 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %119 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %118, i32 0, i32 3
  %120 = load i32, i32* %10, align 4
  %121 = add i32 %120, 4
  %122 = call i32 @print_hex_dump_bytes(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %117, %struct.TYPE_7__* %119, i32 %121)
  %123 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %124 = load i32, i32* @CARL9170_RR_COMMAND_TIMEOUT, align 4
  %125 = call i32 @carl9170_restart(%struct.ar9170* %123, i32 %124)
  br label %126

126:                                              ; preds = %110, %106
  %127 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %128 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %127, i32 0, i32 1
  %129 = call i32 @spin_lock_bh(i32* %128)
  %130 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %131 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %130, i32 0, i32 2
  store i32* null, i32** %131, align 8
  %132 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %133 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %132, i32 0, i32 0
  store i32 0, i32* %133, align 8
  %134 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %135 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %134, i32 0, i32 1
  %136 = call i32 @spin_unlock_bh(i32* %135)
  %137 = load i32, i32* %14, align 4
  store i32 %137, i32* %7, align 4
  br label %138

138:                                              ; preds = %126, %105, %21
  %139 = load i32, i32* %7, align 4
  ret i32 %139
}

declare dso_local i32 @IS_ACCEPTING_CMD(%struct.ar9170*) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @__carl9170_exec_cmd(%struct.ar9170*, %struct.TYPE_7__*, i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i64 @IS_STARTED(%struct.ar9170*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @print_hex_dump_bytes(i8*, i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @carl9170_restart(%struct.ar9170*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
