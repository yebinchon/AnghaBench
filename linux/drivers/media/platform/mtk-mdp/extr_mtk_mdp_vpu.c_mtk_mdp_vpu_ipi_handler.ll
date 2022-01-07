; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_vpu.c_mtk_mdp_vpu_ipi_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_vpu.c_mtk_mdp_vpu_ipi_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp_ipi_comm_ack = type { i32, i64 }
%struct.mtk_mdp_vpu = type { i32 }
%struct.mtk_mdp_ctx = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"handle unknown ipi msg:0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"[%d]:msg 0x%x, failure:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*)* @mtk_mdp_vpu_ipi_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_mdp_vpu_ipi_handler(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mdp_ipi_comm_ack*, align 8
  %9 = alloca %struct.mtk_mdp_vpu*, align 8
  %10 = alloca %struct.mtk_mdp_ctx*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to i32*
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.mdp_ipi_comm_ack*
  store %struct.mdp_ipi_comm_ack* %15, %struct.mdp_ipi_comm_ack** %8, align 8
  %16 = load %struct.mdp_ipi_comm_ack*, %struct.mdp_ipi_comm_ack** %8, align 8
  %17 = getelementptr inbounds %struct.mdp_ipi_comm_ack, %struct.mdp_ipi_comm_ack* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.mtk_mdp_vpu*
  store %struct.mtk_mdp_vpu* %19, %struct.mtk_mdp_vpu** %9, align 8
  %20 = load %struct.mdp_ipi_comm_ack*, %struct.mdp_ipi_comm_ack** %8, align 8
  %21 = getelementptr inbounds %struct.mdp_ipi_comm_ack, %struct.mdp_ipi_comm_ack* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.mtk_mdp_vpu*, %struct.mtk_mdp_vpu** %9, align 8
  %24 = getelementptr inbounds %struct.mtk_mdp_vpu, %struct.mtk_mdp_vpu* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.mtk_mdp_vpu*, %struct.mtk_mdp_vpu** %9, align 8
  %26 = getelementptr inbounds %struct.mtk_mdp_vpu, %struct.mtk_mdp_vpu* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %47, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %35 [
    i32 129, label %31
    i32 130, label %34
    i32 128, label %34
  ]

31:                                               ; preds = %29
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @mtk_mdp_vpu_handle_init_ack(i8* %32)
  br label %46

34:                                               ; preds = %29, %29
  br label %46

35:                                               ; preds = %29
  %36 = load %struct.mtk_mdp_vpu*, %struct.mtk_mdp_vpu** %9, align 8
  %37 = call %struct.mtk_mdp_ctx* @vpu_to_ctx(%struct.mtk_mdp_vpu* %36)
  store %struct.mtk_mdp_ctx* %37, %struct.mtk_mdp_ctx** %10, align 8
  %38 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %10, align 8
  %39 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %35, %34, %31
  br label %58

47:                                               ; preds = %3
  %48 = load %struct.mtk_mdp_vpu*, %struct.mtk_mdp_vpu** %9, align 8
  %49 = call %struct.mtk_mdp_ctx* @vpu_to_ctx(%struct.mtk_mdp_vpu* %48)
  store %struct.mtk_mdp_ctx* %49, %struct.mtk_mdp_ctx** %10, align 8
  %50 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %10, align 8
  %51 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.mtk_mdp_vpu*, %struct.mtk_mdp_vpu** %9, align 8
  %55 = getelementptr inbounds %struct.mtk_mdp_vpu, %struct.mtk_mdp_vpu* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @mtk_mdp_dbg(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %47, %46
  ret void
}

declare dso_local i32 @mtk_mdp_vpu_handle_init_ack(i8*) #1

declare dso_local %struct.mtk_mdp_ctx* @vpu_to_ctx(%struct.mtk_mdp_vpu*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mtk_mdp_dbg(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
