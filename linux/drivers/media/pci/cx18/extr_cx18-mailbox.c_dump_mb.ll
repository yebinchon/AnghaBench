; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-mailbox.c_dump_mb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-mailbox.c_dump_mb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { i32 }
%struct.cx18_mailbox = type { i32, i32, i32, i32, i32 }

@MAX_MB_ARGUMENTS = common dso_local global i32 0, align 4
@cx18_debug = common dso_local global i32 0, align 4
@CX18_DBGFLG_API = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"%s: req %#010x ack %#010x cmd %#010x err %#010x args%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx18*, %struct.cx18_mailbox*, i8*)* @dump_mb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_mb(%struct.cx18* %0, %struct.cx18_mailbox* %1, i8* %2) #0 {
  %4 = alloca %struct.cx18*, align 8
  %5 = alloca %struct.cx18_mailbox*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.cx18* %0, %struct.cx18** %4, align 8
  store %struct.cx18_mailbox* %1, %struct.cx18_mailbox** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* @MAX_MB_ARGUMENTS, align 4
  %11 = mul nsw i32 %10, 11
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i32, i32* @cx18_debug, align 4
  %17 = load i32, i32* @CX18_DBGFLG_API, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  br label %41

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.cx18_mailbox*, %struct.cx18_mailbox** %5, align 8
  %24 = getelementptr inbounds %struct.cx18_mailbox, %struct.cx18_mailbox* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.cx18_mailbox*, %struct.cx18_mailbox** %5, align 8
  %27 = getelementptr inbounds %struct.cx18_mailbox, %struct.cx18_mailbox* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.cx18_mailbox*, %struct.cx18_mailbox** %5, align 8
  %30 = getelementptr inbounds %struct.cx18_mailbox, %struct.cx18_mailbox* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.cx18_mailbox*, %struct.cx18_mailbox** %5, align 8
  %33 = getelementptr inbounds %struct.cx18_mailbox, %struct.cx18_mailbox* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.cx18_mailbox*, %struct.cx18_mailbox** %5, align 8
  %36 = getelementptr inbounds %struct.cx18_mailbox, %struct.cx18_mailbox* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MAX_MB_ARGUMENTS, align 4
  %39 = call i32 @u32arr2hex(i32 %37, i32 %38, i8* %15)
  %40 = call i32 @CX18_DEBUG_API(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %22, i32 %25, i32 %28, i32 %31, i32 %34, i32 %39)
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %21, %20
  %42 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %42)
  %43 = load i32, i32* %9, align 4
  switch i32 %43, label %45 [
    i32 0, label %44
    i32 1, label %44
  ]

44:                                               ; preds = %41, %41
  ret void

45:                                               ; preds = %41
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CX18_DEBUG_API(i8*, i8*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @u32arr2hex(i32, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
