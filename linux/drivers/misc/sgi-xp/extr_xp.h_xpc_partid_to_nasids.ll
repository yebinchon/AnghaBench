; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xp.h_xpc_partid_to_nasids.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xp.h_xpc_partid_to_nasids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i16, i8*)* }

@xpc_interface = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@xpNotLoaded = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16, i8*)* @xpc_partid_to_nasids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpc_partid_to_nasids(i16 signext %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i8*, align 8
  store i16 %0, i16* %4, align 2
  store i8* %1, i8** %5, align 8
  %6 = load i32 (i16, i8*)*, i32 (i16, i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_interface, i32 0, i32 0), align 8
  %7 = icmp ne i32 (i16, i8*)* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @xpNotLoaded, align 4
  store i32 %9, i32* %3, align 4
  br label %15

10:                                               ; preds = %2
  %11 = load i32 (i16, i8*)*, i32 (i16, i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_interface, i32 0, i32 0), align 8
  %12 = load i16, i16* %4, align 2
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 %11(i16 signext %12, i8* %13)
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %10, %8
  %16 = load i32, i32* %3, align 4
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
