; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xp.h_xpc_received.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xp.h_xpc_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i16, i32, i8*)* }

@xpc_interface = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16, i32, i8*)* @xpc_received to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_received(i16 signext %0, i32 %1, i8* %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i16 %0, i16* %4, align 2
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i32 (i16, i32, i8*)*, i32 (i16, i32, i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_interface, i32 0, i32 0), align 8
  %8 = icmp ne i32 (i16, i32, i8*)* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = load i32 (i16, i32, i8*)*, i32 (i16, i32, i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_interface, i32 0, i32 0), align 8
  %11 = load i16, i16* %4, align 2
  %12 = load i32, i32* %5, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 %10(i16 signext %11, i32 %12, i8* %13)
  br label %15

15:                                               ; preds = %9, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
