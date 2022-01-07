; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_fd_get_flow_tuples.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_fd_get_flow_tuples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_keys = type { %struct.TYPE_18__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_12__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.hclge_fd_rule_tuples = type { i8**, i8**, i8*, i32, i8* }

@ETH_P_IP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.flow_keys*, %struct.hclge_fd_rule_tuples*)* @hclge_fd_get_flow_tuples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_fd_get_flow_tuples(%struct.flow_keys* %0, %struct.hclge_fd_rule_tuples* %1) #0 {
  %3 = alloca %struct.flow_keys*, align 8
  %4 = alloca %struct.hclge_fd_rule_tuples*, align 8
  store %struct.flow_keys* %0, %struct.flow_keys** %3, align 8
  store %struct.hclge_fd_rule_tuples* %1, %struct.hclge_fd_rule_tuples** %4, align 8
  %5 = load %struct.flow_keys*, %struct.flow_keys** %3, align 8
  %6 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = call i8* @be16_to_cpu(i64 %8)
  %10 = load %struct.hclge_fd_rule_tuples*, %struct.hclge_fd_rule_tuples** %4, align 8
  %11 = getelementptr inbounds %struct.hclge_fd_rule_tuples, %struct.hclge_fd_rule_tuples* %10, i32 0, i32 4
  store i8* %9, i8** %11, align 8
  %12 = load %struct.flow_keys*, %struct.flow_keys** %3, align 8
  %13 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.hclge_fd_rule_tuples*, %struct.hclge_fd_rule_tuples** %4, align 8
  %17 = getelementptr inbounds %struct.hclge_fd_rule_tuples, %struct.hclge_fd_rule_tuples* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load %struct.flow_keys*, %struct.flow_keys** %3, align 8
  %19 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i8* @be16_to_cpu(i64 %21)
  %23 = load %struct.hclge_fd_rule_tuples*, %struct.hclge_fd_rule_tuples** %4, align 8
  %24 = getelementptr inbounds %struct.hclge_fd_rule_tuples, %struct.hclge_fd_rule_tuples* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load %struct.flow_keys*, %struct.flow_keys** %3, align 8
  %26 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @ETH_P_IP, align 4
  %30 = call i64 @htons(i32 %29)
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %2
  %33 = load %struct.flow_keys*, %struct.flow_keys** %3, align 8
  %34 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @be32_to_cpu(i32 %37)
  %39 = load %struct.hclge_fd_rule_tuples*, %struct.hclge_fd_rule_tuples** %4, align 8
  %40 = getelementptr inbounds %struct.hclge_fd_rule_tuples, %struct.hclge_fd_rule_tuples* %39, i32 0, i32 1
  %41 = load i8**, i8*** %40, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 3
  store i8* %38, i8** %42, align 8
  %43 = load %struct.flow_keys*, %struct.flow_keys** %3, align 8
  %44 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i8* @be32_to_cpu(i32 %47)
  %49 = load %struct.hclge_fd_rule_tuples*, %struct.hclge_fd_rule_tuples** %4, align 8
  %50 = getelementptr inbounds %struct.hclge_fd_rule_tuples, %struct.hclge_fd_rule_tuples* %49, i32 0, i32 0
  %51 = load i8**, i8*** %50, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 3
  store i8* %48, i8** %52, align 8
  br label %76

53:                                               ; preds = %2
  %54 = load %struct.hclge_fd_rule_tuples*, %struct.hclge_fd_rule_tuples** %4, align 8
  %55 = getelementptr inbounds %struct.hclge_fd_rule_tuples, %struct.hclge_fd_rule_tuples* %54, i32 0, i32 1
  %56 = load i8**, i8*** %55, align 8
  %57 = load %struct.flow_keys*, %struct.flow_keys** %3, align 8
  %58 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @memcpy(i8** %56, i32 %63, i32 8)
  %65 = load %struct.hclge_fd_rule_tuples*, %struct.hclge_fd_rule_tuples** %4, align 8
  %66 = getelementptr inbounds %struct.hclge_fd_rule_tuples, %struct.hclge_fd_rule_tuples* %65, i32 0, i32 0
  %67 = load i8**, i8*** %66, align 8
  %68 = load %struct.flow_keys*, %struct.flow_keys** %3, align 8
  %69 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @memcpy(i8** %67, i32 %74, i32 8)
  br label %76

76:                                               ; preds = %53, %32
  ret void
}

declare dso_local i8* @be16_to_cpu(i64) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
