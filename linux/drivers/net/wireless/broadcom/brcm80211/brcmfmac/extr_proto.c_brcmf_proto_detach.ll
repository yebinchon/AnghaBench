; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_proto.c_brcmf_proto_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_proto.c_brcmf_proto_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pub = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@BRCMF_PROTO_BCDC = common dso_local global i64 0, align 8
@BRCMF_PROTO_MSGBUF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcmf_proto_detach(%struct.brcmf_pub* %0) #0 {
  %2 = alloca %struct.brcmf_pub*, align 8
  store %struct.brcmf_pub* %0, %struct.brcmf_pub** %2, align 8
  %3 = load i32, i32* @TRACE, align 4
  %4 = call i32 @brcmf_dbg(i32 %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.brcmf_pub*, %struct.brcmf_pub** %2, align 8
  %6 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %39

9:                                                ; preds = %1
  %10 = load %struct.brcmf_pub*, %struct.brcmf_pub** %2, align 8
  %11 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @BRCMF_PROTO_BCDC, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = load %struct.brcmf_pub*, %struct.brcmf_pub** %2, align 8
  %19 = call i32 @brcmf_proto_bcdc_detach(%struct.brcmf_pub* %18)
  br label %32

20:                                               ; preds = %9
  %21 = load %struct.brcmf_pub*, %struct.brcmf_pub** %2, align 8
  %22 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @BRCMF_PROTO_MSGBUF, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load %struct.brcmf_pub*, %struct.brcmf_pub** %2, align 8
  %30 = call i32 @brcmf_proto_msgbuf_detach(%struct.brcmf_pub* %29)
  br label %31

31:                                               ; preds = %28, %20
  br label %32

32:                                               ; preds = %31, %17
  %33 = load %struct.brcmf_pub*, %struct.brcmf_pub** %2, align 8
  %34 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @kfree(i32* %35)
  %37 = load %struct.brcmf_pub*, %struct.brcmf_pub** %2, align 8
  %38 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %32, %1
  ret void
}

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i32 @brcmf_proto_bcdc_detach(%struct.brcmf_pub*) #1

declare dso_local i32 @brcmf_proto_msgbuf_detach(%struct.brcmf_pub*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
