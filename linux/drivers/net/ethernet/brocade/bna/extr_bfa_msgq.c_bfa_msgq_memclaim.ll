; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_msgq.c_bfa_msgq_memclaim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_msgq.c_bfa_msgq_memclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_msgq = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i32* }

@BFA_MSGQ_CMDQ_SIZE = common dso_local global i32 0, align 4
@BFA_DMA_ALIGN_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_msgq_memclaim(%struct.bfa_msgq* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.bfa_msgq*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store %struct.bfa_msgq* %0, %struct.bfa_msgq** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = load %struct.bfa_msgq*, %struct.bfa_msgq** %4, align 8
  %9 = getelementptr inbounds %struct.bfa_msgq, %struct.bfa_msgq* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  store i32* %7, i32** %11, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.bfa_msgq*, %struct.bfa_msgq** %4, align 8
  %14 = getelementptr inbounds %struct.bfa_msgq, %struct.bfa_msgq* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i8* %12, i8** %16, align 8
  %17 = load i32, i32* @BFA_MSGQ_CMDQ_SIZE, align 4
  %18 = load i32, i32* @BFA_DMA_ALIGN_SZ, align 4
  %19 = call i64 @roundup(i32 %17, i32 %18)
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 %19
  store i32* %21, i32** %5, align 8
  %22 = load i32, i32* @BFA_MSGQ_CMDQ_SIZE, align 4
  %23 = load i32, i32* @BFA_DMA_ALIGN_SZ, align 4
  %24 = call i64 @roundup(i32 %22, i32 %23)
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr i8, i8* %25, i64 %24
  store i8* %26, i8** %6, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = load %struct.bfa_msgq*, %struct.bfa_msgq** %4, align 8
  %29 = getelementptr inbounds %struct.bfa_msgq, %struct.bfa_msgq* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  store i32* %27, i32** %31, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.bfa_msgq*, %struct.bfa_msgq** %4, align 8
  %34 = getelementptr inbounds %struct.bfa_msgq, %struct.bfa_msgq* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store i8* %32, i8** %36, align 8
  ret void
}

declare dso_local i64 @roundup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
