; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_init_tc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_init_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, %struct.bnxt_tc_info*, %struct.TYPE_2__* }
%struct.bnxt_tc_info = type { i32, i32, i32, i32, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"Firmware does not support TC flower offload.\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bnxt_tc_flow_ht_params = common dso_local global i8* null, align 8
@bnxt_tc_l2_ht_params = common dso_local global i8* null, align 8
@bnxt_tc_decap_l2_ht_params = common dso_local global i8* null, align 8
@bnxt_tc_tunnel_ht_params = common dso_local global i8* null, align 8
@NETIF_F_HW_TC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_init_tc(%struct.bnxt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca %struct.bnxt_tc_info*, align 8
  %5 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  %6 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %7 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %8, 67587
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %12 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = call i32 @netdev_warn(%struct.TYPE_2__* %13, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ENOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %134

17:                                               ; preds = %1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.bnxt_tc_info* @kzalloc(i32 96, i32 %18)
  store %struct.bnxt_tc_info* %19, %struct.bnxt_tc_info** %4, align 8
  %20 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %4, align 8
  %21 = icmp ne %struct.bnxt_tc_info* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %134

25:                                               ; preds = %17
  %26 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %4, align 8
  %27 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %26, i32 0, i32 13
  %28 = call i32 @mutex_init(i32* %27)
  %29 = call i8* @mask(i32 36)
  %30 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %4, align 8
  %31 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %30, i32 0, i32 12
  store i8* %29, i8** %31, align 8
  %32 = call i8* @mask(i32 28)
  %33 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %4, align 8
  %34 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %33, i32 0, i32 11
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** @bnxt_tc_flow_ht_params, align 8
  %36 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %4, align 8
  %37 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %36, i32 0, i32 10
  store i8* %35, i8** %37, align 8
  %38 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %4, align 8
  %39 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %38, i32 0, i32 1
  %40 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %4, align 8
  %41 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %40, i32 0, i32 10
  %42 = call i32 @rhashtable_init(i32* %39, i8** %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %25
  br label %130

46:                                               ; preds = %25
  %47 = load i8*, i8** @bnxt_tc_l2_ht_params, align 8
  %48 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %4, align 8
  %49 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %48, i32 0, i32 9
  store i8* %47, i8** %49, align 8
  %50 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %4, align 8
  %51 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %50, i32 0, i32 2
  %52 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %4, align 8
  %53 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %52, i32 0, i32 9
  %54 = call i32 @rhashtable_init(i32* %51, i8** %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  br label %126

58:                                               ; preds = %46
  %59 = load i8*, i8** @bnxt_tc_decap_l2_ht_params, align 8
  %60 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %4, align 8
  %61 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %60, i32 0, i32 8
  store i8* %59, i8** %61, align 8
  %62 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %4, align 8
  %63 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %62, i32 0, i32 3
  %64 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %4, align 8
  %65 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %64, i32 0, i32 8
  %66 = call i32 @rhashtable_init(i32* %63, i8** %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  br label %122

70:                                               ; preds = %58
  %71 = load i8*, i8** @bnxt_tc_tunnel_ht_params, align 8
  %72 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %4, align 8
  %73 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %72, i32 0, i32 7
  store i8* %71, i8** %73, align 8
  %74 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %4, align 8
  %75 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %74, i32 0, i32 4
  %76 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %4, align 8
  %77 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %76, i32 0, i32 7
  %78 = call i32 @rhashtable_init(i32* %75, i8** %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %70
  br label %118

82:                                               ; preds = %70
  %83 = load i8*, i8** @bnxt_tc_tunnel_ht_params, align 8
  %84 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %4, align 8
  %85 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %84, i32 0, i32 5
  store i8* %83, i8** %85, align 8
  %86 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %4, align 8
  %87 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %86, i32 0, i32 6
  %88 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %4, align 8
  %89 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %88, i32 0, i32 5
  %90 = call i32 @rhashtable_init(i32* %87, i8** %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %82
  br label %114

94:                                               ; preds = %82
  %95 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %4, align 8
  %96 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %95, i32 0, i32 0
  store i32 1, i32* %96, align 8
  %97 = load i32, i32* @NETIF_F_HW_TC, align 4
  %98 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %99 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %98, i32 0, i32 2
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %97
  store i32 %103, i32* %101, align 4
  %104 = load i32, i32* @NETIF_F_HW_TC, align 4
  %105 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %106 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %105, i32 0, i32 2
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %104
  store i32 %110, i32* %108, align 4
  %111 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %4, align 8
  %112 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %113 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %112, i32 0, i32 1
  store %struct.bnxt_tc_info* %111, %struct.bnxt_tc_info** %113, align 8
  store i32 0, i32* %2, align 4
  br label %134

114:                                              ; preds = %93
  %115 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %4, align 8
  %116 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %115, i32 0, i32 4
  %117 = call i32 @rhashtable_destroy(i32* %116)
  br label %118

118:                                              ; preds = %114, %81
  %119 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %4, align 8
  %120 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %119, i32 0, i32 3
  %121 = call i32 @rhashtable_destroy(i32* %120)
  br label %122

122:                                              ; preds = %118, %69
  %123 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %4, align 8
  %124 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %123, i32 0, i32 2
  %125 = call i32 @rhashtable_destroy(i32* %124)
  br label %126

126:                                              ; preds = %122, %57
  %127 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %4, align 8
  %128 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %127, i32 0, i32 1
  %129 = call i32 @rhashtable_destroy(i32* %128)
  br label %130

130:                                              ; preds = %126, %45
  %131 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %4, align 8
  %132 = call i32 @kfree(%struct.bnxt_tc_info* %131)
  %133 = load i32, i32* %5, align 4
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %130, %94, %22, %10
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @netdev_warn(%struct.TYPE_2__*, i8*) #1

declare dso_local %struct.bnxt_tc_info* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i8* @mask(i32) #1

declare dso_local i32 @rhashtable_init(i32*, i8**) #1

declare dso_local i32 @rhashtable_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.bnxt_tc_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
