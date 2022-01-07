; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_qdisc_graft.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_qdisc_graft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_qdisc = type { i32, %struct.nfp_qdisc**, i32 }
%struct.nfp_abm_link = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"graft child out of bound %d >= %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NFP_QDISC_UNTRACKED = common dso_local global %struct.nfp_qdisc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_abm_link*, i32, i32, i32)* @nfp_abm_qdisc_graft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_abm_qdisc_graft(%struct.nfp_abm_link* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_abm_link*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfp_qdisc*, align 8
  %11 = alloca %struct.nfp_qdisc*, align 8
  store %struct.nfp_abm_link* %0, %struct.nfp_abm_link** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.nfp_qdisc* @nfp_abm_qdisc_find(%struct.nfp_abm_link* %12, i32 %13)
  store %struct.nfp_qdisc* %14, %struct.nfp_qdisc** %10, align 8
  %15 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %10, align 8
  %16 = icmp ne %struct.nfp_qdisc* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %62

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %10, align 8
  %21 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp uge i32 %19, %22
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %10, align 8
  %27 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @WARN(i32 %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %18
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %62

34:                                               ; preds = %18
  %35 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %10, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = add i32 %37, 1
  %39 = call i32 @nfp_abm_qdisc_unlink_children(%struct.nfp_qdisc* %35, i32 %36, i32 %38)
  %40 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %6, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call %struct.nfp_qdisc* @nfp_abm_qdisc_find(%struct.nfp_abm_link* %40, i32 %41)
  store %struct.nfp_qdisc* %42, %struct.nfp_qdisc** %11, align 8
  %43 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %11, align 8
  %44 = icmp ne %struct.nfp_qdisc* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %34
  %46 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %11, align 8
  %47 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  br label %52

50:                                               ; preds = %34
  %51 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** @NFP_QDISC_UNTRACKED, align 8
  store %struct.nfp_qdisc* %51, %struct.nfp_qdisc** %11, align 8
  br label %52

52:                                               ; preds = %50, %45
  %53 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %11, align 8
  %54 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %10, align 8
  %55 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %54, i32 0, i32 1
  %56 = load %struct.nfp_qdisc**, %struct.nfp_qdisc*** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.nfp_qdisc*, %struct.nfp_qdisc** %56, i64 %58
  store %struct.nfp_qdisc* %53, %struct.nfp_qdisc** %59, align 8
  %60 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %6, align 8
  %61 = call i32 @nfp_abm_qdisc_offload_update(%struct.nfp_abm_link* %60)
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %52, %31, %17
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.nfp_qdisc* @nfp_abm_qdisc_find(%struct.nfp_abm_link*, i32) #1

declare dso_local i64 @WARN(i32, i8*, i32, i32) #1

declare dso_local i32 @nfp_abm_qdisc_unlink_children(%struct.nfp_qdisc*, i32, i32) #1

declare dso_local i32 @nfp_abm_qdisc_offload_update(%struct.nfp_abm_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
