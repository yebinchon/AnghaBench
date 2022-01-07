; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_action.c_nfp_fl_check_mangle_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_action.c_nfp_fl_check_mangle_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_action = type { i32, %struct.flow_action_entry* }
%struct.flow_action_entry = type { i64 }

@FLOW_ACTION_MANGLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flow_action*, i32)* @nfp_fl_check_mangle_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_fl_check_mangle_end(%struct.flow_action* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.flow_action*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.flow_action_entry, align 8
  %7 = alloca %struct.flow_action_entry, align 8
  store %struct.flow_action* %0, %struct.flow_action** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.flow_action*, %struct.flow_action** %4, align 8
  %9 = getelementptr inbounds %struct.flow_action, %struct.flow_action* %8, i32 0, i32 1
  %10 = load %struct.flow_action_entry*, %struct.flow_action_entry** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %10, i64 %12
  %14 = bitcast %struct.flow_action_entry* %6 to i8*
  %15 = bitcast %struct.flow_action_entry* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 8, i1 false)
  %16 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %6, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @FLOW_ACTION_MANGLE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.flow_action*, %struct.flow_action** %4, align 8
  %24 = getelementptr inbounds %struct.flow_action, %struct.flow_action* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %43

28:                                               ; preds = %21
  %29 = load %struct.flow_action*, %struct.flow_action** %4, align 8
  %30 = getelementptr inbounds %struct.flow_action, %struct.flow_action* %29, i32 0, i32 1
  %31 = load %struct.flow_action_entry*, %struct.flow_action_entry** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %31, i64 %34
  %36 = bitcast %struct.flow_action_entry* %7 to i8*
  %37 = bitcast %struct.flow_action_entry* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 8, i1 false)
  %38 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %7, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @FLOW_ACTION_MANGLE, align 8
  %41 = icmp ne i64 %39, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %28, %27, %20
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
