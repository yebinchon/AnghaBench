; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_action.c_nfp_fl_set_mpls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_action.c_nfp_fl_set_mpls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_fl_set_mpls = type { i8*, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.flow_action_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@NFP_FL_ACTION_OPCODE_SET_MPLS = common dso_local global i32 0, align 4
@NFP_FL_LW_SIZ = common dso_local global i64 0, align 8
@ACT_MPLS_LABEL_NOT_SET = common dso_local global i32 0, align 4
@MPLS_LS_LABEL_SHIFT = common dso_local global i32 0, align 4
@MPLS_LS_LABEL_MASK = common dso_local global i32 0, align 4
@ACT_MPLS_TC_NOT_SET = common dso_local global i32 0, align 4
@MPLS_LS_TC_SHIFT = common dso_local global i32 0, align 4
@MPLS_LS_TC_MASK = common dso_local global i32 0, align 4
@ACT_MPLS_BOS_NOT_SET = common dso_local global i32 0, align 4
@MPLS_LS_S_SHIFT = common dso_local global i32 0, align 4
@MPLS_LS_S_MASK = common dso_local global i32 0, align 4
@MPLS_LS_TTL_SHIFT = common dso_local global i32 0, align 4
@MPLS_LS_TTL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_fl_set_mpls*, %struct.flow_action_entry*)* @nfp_fl_set_mpls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_fl_set_mpls(%struct.nfp_fl_set_mpls* %0, %struct.flow_action_entry* %1) #0 {
  %3 = alloca %struct.nfp_fl_set_mpls*, align 8
  %4 = alloca %struct.flow_action_entry*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nfp_fl_set_mpls* %0, %struct.nfp_fl_set_mpls** %3, align 8
  store %struct.flow_action_entry* %1, %struct.flow_action_entry** %4, align 8
  store i64 32, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @NFP_FL_ACTION_OPCODE_SET_MPLS, align 4
  %9 = load %struct.nfp_fl_set_mpls*, %struct.nfp_fl_set_mpls** %3, align 8
  %10 = getelementptr inbounds %struct.nfp_fl_set_mpls, %struct.nfp_fl_set_mpls* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store i32 %8, i32* %11, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @NFP_FL_LW_SIZ, align 8
  %14 = lshr i64 %12, %13
  %15 = load %struct.nfp_fl_set_mpls*, %struct.nfp_fl_set_mpls** %3, align 8
  %16 = getelementptr inbounds %struct.nfp_fl_set_mpls, %struct.nfp_fl_set_mpls* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i64 %14, i64* %17, align 8
  %18 = load %struct.flow_action_entry*, %struct.flow_action_entry** %4, align 8
  %19 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ACT_MPLS_LABEL_NOT_SET, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %2
  %25 = load %struct.flow_action_entry*, %struct.flow_action_entry** %4, align 8
  %26 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MPLS_LS_LABEL_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* @MPLS_LS_LABEL_MASK, align 4
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %24, %2
  %37 = load %struct.flow_action_entry*, %struct.flow_action_entry** %4, align 8
  %38 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ACT_MPLS_TC_NOT_SET, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %36
  %44 = load %struct.flow_action_entry*, %struct.flow_action_entry** %4, align 8
  %45 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MPLS_LS_TC_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* @MPLS_LS_TC_MASK, align 4
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %43, %36
  %56 = load %struct.flow_action_entry*, %struct.flow_action_entry** %4, align 8
  %57 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ACT_MPLS_BOS_NOT_SET, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %55
  %63 = load %struct.flow_action_entry*, %struct.flow_action_entry** %4, align 8
  %64 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @MPLS_LS_S_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = load i32, i32* %6, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* @MPLS_LS_S_MASK, align 4
  %72 = load i32, i32* %7, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %62, %55
  %75 = load %struct.flow_action_entry*, %struct.flow_action_entry** %4, align 8
  %76 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %74
  %81 = load %struct.flow_action_entry*, %struct.flow_action_entry** %4, align 8
  %82 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @MPLS_LS_TTL_SHIFT, align 4
  %86 = shl i32 %84, %85
  %87 = load i32, i32* %6, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* @MPLS_LS_TTL_MASK, align 4
  %90 = load i32, i32* %7, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %80, %74
  %93 = load i32, i32* %6, align 4
  %94 = call i8* @cpu_to_be32(i32 %93)
  %95 = load %struct.nfp_fl_set_mpls*, %struct.nfp_fl_set_mpls** %3, align 8
  %96 = getelementptr inbounds %struct.nfp_fl_set_mpls, %struct.nfp_fl_set_mpls* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i8* @cpu_to_be32(i32 %97)
  %99 = load %struct.nfp_fl_set_mpls*, %struct.nfp_fl_set_mpls** %3, align 8
  %100 = getelementptr inbounds %struct.nfp_fl_set_mpls, %struct.nfp_fl_set_mpls* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  ret void
}

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
