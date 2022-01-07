; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xp.h_xpc_send_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xp.h_xpc_send_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i16, i32, i32, i8*, i32, i32, i8*)* }

@xpc_interface = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@xpNotLoaded = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16, i32, i32, i8*, i32, i32, i8*)* @xpc_send_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpc_send_notify(i16 signext %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i16 %0, i16* %9, align 2
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %16 = load i32 (i16, i32, i32, i8*, i32, i32, i8*)*, i32 (i16, i32, i32, i8*, i32, i32, i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_interface, i32 0, i32 0), align 8
  %17 = icmp ne i32 (i16, i32, i32, i8*, i32, i32, i8*)* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %7
  %19 = load i32, i32* @xpNotLoaded, align 4
  store i32 %19, i32* %8, align 4
  br label %30

20:                                               ; preds = %7
  %21 = load i32 (i16, i32, i32, i8*, i32, i32, i8*)*, i32 (i16, i32, i32, i8*, i32, i32, i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_interface, i32 0, i32 0), align 8
  %22 = load i16, i16* %9, align 2
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i8*, i8** %12, align 8
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %14, align 4
  %28 = load i8*, i8** %15, align 8
  %29 = call i32 %21(i16 signext %22, i32 %23, i32 %24, i8* %25, i32 %26, i32 %27, i8* %28)
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %20, %18
  %31 = load i32, i32* %8, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
