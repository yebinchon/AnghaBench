; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_offload.c_nfp_fl_verify_post_tun_acts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_offload.c_nfp_fl_verify_post_tun_acts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_fl_push_vlan = type { i32 }
%struct.nfp_fl_act_head = type { i64, i32 }

@NFP_FL_ACTION_OPCODE_PUSH_VLAN = common dso_local global i64 0, align 8
@NFP_FL_ACTION_OPCODE_OUTPUT = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NFP_FL_LW_SIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.nfp_fl_push_vlan**)* @nfp_fl_verify_post_tun_acts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_fl_verify_post_tun_acts(i8* %0, i32 %1, %struct.nfp_fl_push_vlan** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfp_fl_push_vlan**, align 8
  %8 = alloca %struct.nfp_fl_act_head*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nfp_fl_push_vlan** %2, %struct.nfp_fl_push_vlan*** %7, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %42, %3
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %50

14:                                               ; preds = %10
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* %9, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = bitcast i8* %18 to %struct.nfp_fl_act_head*
  store %struct.nfp_fl_act_head* %19, %struct.nfp_fl_act_head** %8, align 8
  %20 = load %struct.nfp_fl_act_head*, %struct.nfp_fl_act_head** %8, align 8
  %21 = getelementptr inbounds %struct.nfp_fl_act_head, %struct.nfp_fl_act_head* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NFP_FL_ACTION_OPCODE_PUSH_VLAN, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %14
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load %struct.nfp_fl_act_head*, %struct.nfp_fl_act_head** %8, align 8
  %30 = bitcast %struct.nfp_fl_act_head* %29 to %struct.nfp_fl_push_vlan*
  %31 = load %struct.nfp_fl_push_vlan**, %struct.nfp_fl_push_vlan*** %7, align 8
  store %struct.nfp_fl_push_vlan* %30, %struct.nfp_fl_push_vlan** %31, align 8
  br label %42

32:                                               ; preds = %25, %14
  %33 = load %struct.nfp_fl_act_head*, %struct.nfp_fl_act_head** %8, align 8
  %34 = getelementptr inbounds %struct.nfp_fl_act_head, %struct.nfp_fl_act_head* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NFP_FL_ACTION_OPCODE_OUTPUT, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %62

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %28
  %43 = load %struct.nfp_fl_act_head*, %struct.nfp_fl_act_head** %8, align 8
  %44 = getelementptr inbounds %struct.nfp_fl_act_head, %struct.nfp_fl_act_head* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @NFP_FL_LW_SIZ, align 4
  %47 = shl i32 %45, %46
  %48 = load i32, i32* %9, align 4
  %49 = add i32 %48, %47
  store i32 %49, i32* %9, align 4
  br label %10

50:                                               ; preds = %10
  %51 = load %struct.nfp_fl_push_vlan**, %struct.nfp_fl_push_vlan*** %7, align 8
  %52 = load %struct.nfp_fl_push_vlan*, %struct.nfp_fl_push_vlan** %51, align 8
  %53 = icmp ne %struct.nfp_fl_push_vlan* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load i32, i32* %9, align 4
  %56 = zext i32 %55 to i64
  %57 = icmp ule i64 %56, 4
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* @EOPNOTSUPP, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %62

61:                                               ; preds = %54, %50
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %58, %38
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
