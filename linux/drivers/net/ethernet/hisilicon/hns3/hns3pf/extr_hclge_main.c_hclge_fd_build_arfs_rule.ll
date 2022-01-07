; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_fd_build_arfs_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_fd_build_arfs_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_fd_rule_tuples = type { i64, i64 }
%struct.hclge_fd_rule = type { i32, i32, i32, i32, i32, i64, i64 }

@INNER_SRC_MAC = common dso_local global i32 0, align 4
@INNER_DST_MAC = common dso_local global i32 0, align 4
@INNER_VLAN_TAG_FST = common dso_local global i32 0, align 4
@INNER_IP_TOS = common dso_local global i32 0, align 4
@INNER_SRC_PORT = common dso_local global i32 0, align 4
@HCLGE_FD_ARFS_ACTIVE = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i64 0, align 8
@TCP_V4_FLOW = common dso_local global i32 0, align 4
@UDP_V4_FLOW = common dso_local global i32 0, align 4
@TCP_V6_FLOW = common dso_local global i32 0, align 4
@UDP_V6_FLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_fd_rule_tuples*, %struct.hclge_fd_rule*)* @hclge_fd_build_arfs_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_fd_build_arfs_rule(%struct.hclge_fd_rule_tuples* %0, %struct.hclge_fd_rule* %1) #0 {
  %3 = alloca %struct.hclge_fd_rule_tuples*, align 8
  %4 = alloca %struct.hclge_fd_rule*, align 8
  store %struct.hclge_fd_rule_tuples* %0, %struct.hclge_fd_rule_tuples** %3, align 8
  store %struct.hclge_fd_rule* %1, %struct.hclge_fd_rule** %4, align 8
  %5 = load i32, i32* @INNER_SRC_MAC, align 4
  %6 = call i32 @BIT(i32 %5)
  %7 = load i32, i32* @INNER_DST_MAC, align 4
  %8 = call i32 @BIT(i32 %7)
  %9 = or i32 %6, %8
  %10 = load i32, i32* @INNER_VLAN_TAG_FST, align 4
  %11 = call i32 @BIT(i32 %10)
  %12 = or i32 %9, %11
  %13 = load i32, i32* @INNER_IP_TOS, align 4
  %14 = call i32 @BIT(i32 %13)
  %15 = or i32 %12, %14
  %16 = load i32, i32* @INNER_SRC_PORT, align 4
  %17 = call i32 @BIT(i32 %16)
  %18 = or i32 %15, %17
  %19 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %4, align 8
  %20 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %4, align 8
  %22 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %21, i32 0, i32 6
  store i64 0, i64* %22, align 8
  %23 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %4, align 8
  %24 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %23, i32 0, i32 5
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* @HCLGE_FD_ARFS_ACTIVE, align 4
  %26 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %4, align 8
  %27 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = load %struct.hclge_fd_rule_tuples*, %struct.hclge_fd_rule_tuples** %3, align 8
  %29 = getelementptr inbounds %struct.hclge_fd_rule_tuples, %struct.hclge_fd_rule_tuples* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ETH_P_IP, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %2
  %34 = load %struct.hclge_fd_rule_tuples*, %struct.hclge_fd_rule_tuples** %3, align 8
  %35 = getelementptr inbounds %struct.hclge_fd_rule_tuples, %struct.hclge_fd_rule_tuples* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @IPPROTO_TCP, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i32, i32* @TCP_V4_FLOW, align 4
  %41 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %4, align 8
  %42 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  br label %47

43:                                               ; preds = %33
  %44 = load i32, i32* @UDP_V4_FLOW, align 4
  %45 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %4, align 8
  %46 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %43, %39
  br label %63

48:                                               ; preds = %2
  %49 = load %struct.hclge_fd_rule_tuples*, %struct.hclge_fd_rule_tuples** %3, align 8
  %50 = getelementptr inbounds %struct.hclge_fd_rule_tuples, %struct.hclge_fd_rule_tuples* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @IPPROTO_TCP, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i32, i32* @TCP_V6_FLOW, align 4
  %56 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %4, align 8
  %57 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  br label %62

58:                                               ; preds = %48
  %59 = load i32, i32* @UDP_V6_FLOW, align 4
  %60 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %4, align 8
  %61 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %58, %54
  br label %63

63:                                               ; preds = %62, %47
  %64 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %4, align 8
  %65 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %64, i32 0, i32 2
  %66 = load %struct.hclge_fd_rule_tuples*, %struct.hclge_fd_rule_tuples** %3, align 8
  %67 = call i32 @memcpy(i32* %65, %struct.hclge_fd_rule_tuples* %66, i32 4)
  %68 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %4, align 8
  %69 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %68, i32 0, i32 1
  %70 = call i32 @memset(i32* %69, i32 255, i32 4)
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.hclge_fd_rule_tuples*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
