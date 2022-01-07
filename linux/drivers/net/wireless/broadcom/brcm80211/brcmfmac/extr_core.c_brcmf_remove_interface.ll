; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_remove_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_remove_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.brcmf_if** }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Enter, bsscfgidx=%d, ifidx=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcmf_remove_interface(%struct.brcmf_if* %0, i32 %1) #0 {
  %3 = alloca %struct.brcmf_if*, align 8
  %4 = alloca i32, align 4
  store %struct.brcmf_if* %0, %struct.brcmf_if** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %6 = icmp ne %struct.brcmf_if* %5, null
  br i1 %6, label %7, label %23

7:                                                ; preds = %2
  %8 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %9 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.brcmf_if**, %struct.brcmf_if*** %11, align 8
  %13 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %14 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.brcmf_if*, %struct.brcmf_if** %12, i64 %15
  %17 = load %struct.brcmf_if*, %struct.brcmf_if** %16, align 8
  %18 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %19 = icmp ne %struct.brcmf_if* %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %7, %2
  br label %46

24:                                               ; preds = %7
  %25 = load i32, i32* @TRACE, align 4
  %26 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %27 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %30 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @brcmf_dbg(i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %28, i32 %31)
  %33 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %34 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %37 = call i32 @brcmf_proto_del_if(%struct.TYPE_3__* %35, %struct.brcmf_if* %36)
  %38 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %39 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %42 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @brcmf_del_if(%struct.TYPE_3__* %40, i64 %43, i32 %44)
  br label %46

46:                                               ; preds = %24, %23
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i64, i32) #1

declare dso_local i32 @brcmf_proto_del_if(%struct.TYPE_3__*, %struct.brcmf_if*) #1

declare dso_local i32 @brcmf_del_if(%struct.TYPE_3__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
