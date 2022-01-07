; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c__dbg_security_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c__dbg_security_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i64, i64, i64 }
%struct.mwifiex_bssdescriptor = type { i32, %struct.TYPE_8__*, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [84 x i8] c"info: %s: %s:\09wpa_ie=%#x wpa2_ie=%#x WEP=%s WPA=%s WPA2=%s\09EncMode=%#x privacy=%#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*, %struct.mwifiex_private*, %struct.mwifiex_bssdescriptor*)* @_dbg_security_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dbg_security_flags(i32 %0, i8* %1, i8* %2, %struct.mwifiex_private* %3, %struct.mwifiex_bssdescriptor* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.mwifiex_private*, align 8
  %10 = alloca %struct.mwifiex_bssdescriptor*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.mwifiex_private* %3, %struct.mwifiex_private** %9, align 8
  store %struct.mwifiex_bssdescriptor* %4, %struct.mwifiex_bssdescriptor** %10, align 8
  %11 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %12 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %10, align 8
  %18 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %17, i32 0, i32 2
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = icmp ne %struct.TYPE_10__* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %5
  %22 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %10, align 8
  %23 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %22, i32 0, i32 2
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  br label %29

28:                                               ; preds = %5
  br label %29

29:                                               ; preds = %28, %21
  %30 = phi i32 [ %27, %21 ], [ 0, %28 ]
  %31 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %10, align 8
  %32 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %31, i32 0, i32 1
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = icmp ne %struct.TYPE_8__* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %10, align 8
  %37 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  br label %43

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42, %35
  %44 = phi i32 [ %41, %35 ], [ 0, %42 ]
  %45 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %46 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %52 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %53 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %59 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %60 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %66 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %67 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %10, align 8
  %71 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @_mwifiex_dbg(i32 %13, i32 %14, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i8* %15, i8* %16, i32 %30, i32 %44, i8* %51, i8* %58, i8* %65, i32 %69, i32 %72)
  ret void
}

declare dso_local i32 @_mwifiex_dbg(i32, i32, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
