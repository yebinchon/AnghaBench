; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_rave-sp.c_rave_sp_receive_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_rave-sp.c_rave_sp_receive_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rave_sp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rave_sp*, i8*, i64)* @rave_sp_receive_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rave_sp_receive_event(%struct.rave_sp* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.rave_sp*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [2 x i32], align 4
  store %struct.rave_sp* %0, %struct.rave_sp** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %9 = load i8*, i8** %5, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = call i32 @rave_sp_reply_code(i8 zeroext %11)
  store i32 %12, i32* %8, align 4
  %13 = getelementptr inbounds i32, i32* %8, i64 1
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  store i32 %17, i32* %13, align 4
  %18 = load %struct.rave_sp*, %struct.rave_sp** %4, align 8
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %20 = call i32 @rave_sp_write(%struct.rave_sp* %18, i32* %19, i32 8)
  %21 = load %struct.rave_sp*, %struct.rave_sp** %4, align 8
  %22 = getelementptr inbounds %struct.rave_sp, %struct.rave_sp* %21, i32 0, i32 0
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 2
  %28 = load i8, i8* %27, align 1
  %29 = call i32 @rave_sp_action_pack(i8 zeroext %25, i8 zeroext %28)
  %30 = call i32 @blocking_notifier_call_chain(i32* %22, i32 %29, i32* null)
  ret void
}

declare dso_local i32 @rave_sp_reply_code(i8 zeroext) #1

declare dso_local i32 @rave_sp_write(%struct.rave_sp*, i32*, i32) #1

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, i32*) #1

declare dso_local i32 @rave_sp_action_pack(i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
