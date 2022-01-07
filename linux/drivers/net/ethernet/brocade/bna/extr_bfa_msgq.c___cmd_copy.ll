; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_msgq.c___cmd_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_msgq.c___cmd_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_msgq_cmdq = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.bfa_msgq_cmd_entry = type { i64, i64 }

@BFI_MSGQ_CMD_ENTRY_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmd_entry*)* @__cmd_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cmd_copy(%struct.bfa_msgq_cmdq* %0, %struct.bfa_msgq_cmd_entry* %1) #0 {
  %3 = alloca %struct.bfa_msgq_cmdq*, align 8
  %4 = alloca %struct.bfa_msgq_cmd_entry*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.bfa_msgq_cmdq* %0, %struct.bfa_msgq_cmdq** %3, align 8
  store %struct.bfa_msgq_cmd_entry* %1, %struct.bfa_msgq_cmd_entry** %4, align 8
  %10 = load %struct.bfa_msgq_cmd_entry*, %struct.bfa_msgq_cmd_entry** %4, align 8
  %11 = getelementptr inbounds %struct.bfa_msgq_cmd_entry, %struct.bfa_msgq_cmd_entry* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.bfa_msgq_cmd_entry*, %struct.bfa_msgq_cmd_entry** %4, align 8
  %14 = getelementptr inbounds %struct.bfa_msgq_cmd_entry, %struct.bfa_msgq_cmd_entry* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %8, align 8
  %17 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %3, align 8
  %18 = getelementptr inbounds %struct.bfa_msgq_cmdq, %struct.bfa_msgq_cmdq* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %9, align 8
  %22 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %3, align 8
  %23 = getelementptr inbounds %struct.bfa_msgq_cmdq, %struct.bfa_msgq_cmdq* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BFI_MSGQ_CMD_ENTRY_SIZE, align 8
  %26 = mul i64 %24, %25
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 %26
  store i32* %28, i32** %9, align 8
  br label %29

29:                                               ; preds = %40, %2
  %30 = load i64, i64* %5, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %73

32:                                               ; preds = %29
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @BFI_MSGQ_CMD_ENTRY_SIZE, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i64, i64* %5, align 8
  br label %40

38:                                               ; preds = %32
  %39 = load i64, i64* @BFI_MSGQ_CMD_ENTRY_SIZE, align 8
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i64 [ %37, %36 ], [ %39, %38 ]
  store i64 %41, i64* %7, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @memcpy(i32* %42, i32* %43, i64 %44)
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %5, align 8
  %48 = sub i64 %47, %46
  store i64 %48, i64* %5, align 8
  %49 = load i64, i64* @BFI_MSGQ_CMD_ENTRY_SIZE, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 %49
  store i32* %51, i32** %8, align 8
  %52 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %3, align 8
  %53 = getelementptr inbounds %struct.bfa_msgq_cmdq, %struct.bfa_msgq_cmdq* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %3, align 8
  %56 = getelementptr inbounds %struct.bfa_msgq_cmdq, %struct.bfa_msgq_cmdq* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @BFA_MSGQ_INDX_ADD(i64 %54, i32 1, i32 %57)
  %59 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %3, align 8
  %60 = getelementptr inbounds %struct.bfa_msgq_cmdq, %struct.bfa_msgq_cmdq* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i32*
  store i32* %63, i32** %9, align 8
  %64 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %3, align 8
  %65 = getelementptr inbounds %struct.bfa_msgq_cmdq, %struct.bfa_msgq_cmdq* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @BFI_MSGQ_CMD_ENTRY_SIZE, align 8
  %68 = mul i64 %66, %67
  %69 = load i32*, i32** %9, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 %68
  store i32* %70, i32** %9, align 8
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %29

73:                                               ; preds = %29
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @BFA_MSGQ_INDX_ADD(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
