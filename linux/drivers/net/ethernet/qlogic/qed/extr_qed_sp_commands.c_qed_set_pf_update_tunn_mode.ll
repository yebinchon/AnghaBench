; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sp_commands.c_qed_set_pf_update_tunn_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sp_commands.c_qed_set_pf_update_tunn_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_tunnel_info = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_tunnel_info*, %struct.qed_tunnel_info*, i32)* @qed_set_pf_update_tunn_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_set_pf_update_tunn_mode(%struct.qed_tunnel_info* %0, %struct.qed_tunnel_info* %1, i32 %2) #0 {
  %4 = alloca %struct.qed_tunnel_info*, align 8
  %5 = alloca %struct.qed_tunnel_info*, align 8
  %6 = alloca i32, align 4
  store %struct.qed_tunnel_info* %0, %struct.qed_tunnel_info** %4, align 8
  store %struct.qed_tunnel_info* %1, %struct.qed_tunnel_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %5, align 8
  %8 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %12, %3
  %16 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %5, align 8
  %17 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %4, align 8
  %21 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  br label %23

23:                                               ; preds = %15, %12
  %24 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %5, align 8
  %25 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %29, %23
  %33 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %5, align 8
  %34 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %4, align 8
  %38 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  br label %40

40:                                               ; preds = %32, %29
  %41 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %5, align 8
  %42 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %46, %40
  %50 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %5, align 8
  %51 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %4, align 8
  %55 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  br label %57

57:                                               ; preds = %49, %46
  %58 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %5, align 8
  %59 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %63, %57
  %67 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %5, align 8
  %68 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %4, align 8
  %72 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  br label %74

74:                                               ; preds = %66, %63
  %75 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %5, align 8
  %76 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %74
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %80, %74
  %84 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %5, align 8
  %85 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %4, align 8
  %89 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  br label %91

91:                                               ; preds = %83, %80
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
