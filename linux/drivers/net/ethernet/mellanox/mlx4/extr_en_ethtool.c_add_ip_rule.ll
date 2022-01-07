; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_add_ip_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_add_ip_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32 }
%struct.ethtool_rxnfc = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.ethtool_usrip4_spec }
%struct.ethtool_usrip4_spec = type { i64, i64 }
%struct.list_head = type { i32 }
%struct.mlx4_spec_list = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i8*, i32, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX4_NET_TRANS_RULE_ID_IPV4 = common dso_local global i32 0, align 4
@EN_ETHTOOL_WORD_MASK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_en_priv*, %struct.ethtool_rxnfc*, %struct.list_head*)* @add_ip_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_ip_rule(%struct.mlx4_en_priv* %0, %struct.ethtool_rxnfc* %1, %struct.list_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_en_priv*, align 8
  %6 = alloca %struct.ethtool_rxnfc*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_spec_list*, align 8
  %10 = alloca %struct.mlx4_spec_list*, align 8
  %11 = alloca %struct.ethtool_usrip4_spec*, align 8
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %5, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  store %struct.mlx4_spec_list* null, %struct.mlx4_spec_list** %9, align 8
  store %struct.mlx4_spec_list* null, %struct.mlx4_spec_list** %10, align 8
  %12 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %13 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store %struct.ethtool_usrip4_spec* %15, %struct.ethtool_usrip4_spec** %11, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.mlx4_spec_list* @kzalloc(i32 48, i32 %16)
  store %struct.mlx4_spec_list* %17, %struct.mlx4_spec_list** %10, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.mlx4_spec_list* @kzalloc(i32 48, i32 %18)
  store %struct.mlx4_spec_list* %19, %struct.mlx4_spec_list** %9, align 8
  %20 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %9, align 8
  %21 = icmp ne %struct.mlx4_spec_list* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %10, align 8
  %24 = icmp ne %struct.mlx4_spec_list* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22, %3
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %89

28:                                               ; preds = %22
  %29 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %30 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %31 = load %struct.list_head*, %struct.list_head** %7, align 8
  %32 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %9, align 8
  %33 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %34 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @mlx4_en_ethtool_add_mac_rule_by_ipv4(%struct.mlx4_en_priv* %29, %struct.ethtool_rxnfc* %30, %struct.list_head* %31, %struct.mlx4_spec_list* %32, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %28
  br label %89

43:                                               ; preds = %28
  %44 = load i32, i32* @MLX4_NET_TRANS_RULE_ID_IPV4, align 4
  %45 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %10, align 8
  %46 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %48 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %10, align 8
  %54 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 3
  store i32 %52, i32* %55, align 8
  %56 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %11, align 8
  %57 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %43
  %61 = load i8*, i8** @EN_ETHTOOL_WORD_MASK, align 8
  %62 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %10, align 8
  %63 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  store i8* %61, i8** %64, align 8
  br label %65

65:                                               ; preds = %60, %43
  %66 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %67 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %10, align 8
  %73 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 8
  %75 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %11, align 8
  %76 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %65
  %80 = load i8*, i8** @EN_ETHTOOL_WORD_MASK, align 8
  %81 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %10, align 8
  %82 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  store i8* %80, i8** %83, align 8
  br label %84

84:                                               ; preds = %79, %65
  %85 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %10, align 8
  %86 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %85, i32 0, i32 0
  %87 = load %struct.list_head*, %struct.list_head** %7, align 8
  %88 = call i32 @list_add_tail(i32* %86, %struct.list_head* %87)
  store i32 0, i32* %4, align 4
  br label %95

89:                                               ; preds = %42, %25
  %90 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %9, align 8
  %91 = call i32 @kfree(%struct.mlx4_spec_list* %90)
  %92 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %10, align 8
  %93 = call i32 @kfree(%struct.mlx4_spec_list* %92)
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %89, %84
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.mlx4_spec_list* @kzalloc(i32, i32) #1

declare dso_local i32 @mlx4_en_ethtool_add_mac_rule_by_ipv4(%struct.mlx4_en_priv*, %struct.ethtool_rxnfc*, %struct.list_head*, %struct.mlx4_spec_list*, i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @kfree(%struct.mlx4_spec_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
