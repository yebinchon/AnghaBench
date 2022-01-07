; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_config_rss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_config_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@__const.qlcnic_83xx_config_rss.key = private unnamed_addr constant [5 x i32] [i32 1782757179, i32 2009804195, i32 -792056885, i32 1097278781, i32 1834637018], align 16
@QLCNIC_CMD_CONFIGURE_RSS = common dso_local global i32 0, align 4
@RSS_HASHTYPE_IP_TCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"RSS config failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_config_rss(%struct.qlcnic_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qlcnic_cmd_args, align 8
  %9 = alloca [5 x i32], align 16
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = bitcast [5 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([5 x i32]* @__const.qlcnic_83xx_config_rss.key to i8*), i64 20, i1 false)
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %12 = load i32, i32* @QLCNIC_CMD_CONFIGURE_RSS, align 4
  %13 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %8, %struct.qlcnic_adapter* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %66

18:                                               ; preds = %2
  %19 = load i32, i32* @RSS_HASHTYPE_IP_TCP, align 4
  %20 = and i32 %19, 3
  %21 = shl i32 %20, 4
  %22 = load i32, i32* @RSS_HASHTYPE_IP_TCP, align 4
  %23 = and i32 %22, 3
  %24 = shl i32 %23, 6
  %25 = or i32 %21, %24
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, 1
  %28 = shl i32 %27, 8
  %29 = or i32 %25, %28
  %30 = sext i32 %29 to i64
  %31 = or i64 %30, 458752
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %7, align 4
  %33 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %34 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* %7, align 4
  %43 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  store i32 %42, i32* %46, align 4
  %47 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 4
  %51 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  %52 = call i32 @memcpy(i32* %50, i32* %51, i32 20)
  %53 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %54 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %53, %struct.qlcnic_cmd_args* %8)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %18
  %58 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %59 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = call i32 @dev_info(i32* %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %63

63:                                               ; preds = %57, %18
  %64 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %8)
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %63, %16
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #2

declare dso_local i32 @dev_info(i32*, i8*) #2

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
