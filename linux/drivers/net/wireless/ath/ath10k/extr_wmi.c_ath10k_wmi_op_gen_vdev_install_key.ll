; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_gen_vdev_install_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_gen_vdev_install_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_vdev_install_key_arg = type { i64, i64, i64, i64, i64, i64, i64, i32*, i32 }
%struct.wmi_vdev_install_key_cmd = type { i32, %struct.TYPE_2__, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32 }

@WMI_CIPHER_NONE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"wmi vdev install key idx %d cipher %d len %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, %struct.wmi_vdev_install_key_arg*)* @ath10k_wmi_op_gen_vdev_install_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_op_gen_vdev_install_key(%struct.ath10k* %0, %struct.wmi_vdev_install_key_arg* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.wmi_vdev_install_key_arg*, align 8
  %6 = alloca %struct.wmi_vdev_install_key_cmd*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.wmi_vdev_install_key_arg* %1, %struct.wmi_vdev_install_key_arg** %5, align 8
  %8 = load %struct.wmi_vdev_install_key_arg*, %struct.wmi_vdev_install_key_arg** %5, align 8
  %9 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @WMI_CIPHER_NONE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.wmi_vdev_install_key_arg*, %struct.wmi_vdev_install_key_arg** %5, align 8
  %15 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %14, i32 0, i32 7
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.sk_buff* @ERR_PTR(i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %3, align 8
  br label %140

22:                                               ; preds = %13, %2
  %23 = load %struct.wmi_vdev_install_key_arg*, %struct.wmi_vdev_install_key_arg** %5, align 8
  %24 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @WMI_CIPHER_NONE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load %struct.wmi_vdev_install_key_arg*, %struct.wmi_vdev_install_key_arg** %5, align 8
  %30 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %29, i32 0, i32 7
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.sk_buff* @ERR_PTR(i32 %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %3, align 8
  br label %140

37:                                               ; preds = %28, %22
  %38 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %39 = load %struct.wmi_vdev_install_key_arg*, %struct.wmi_vdev_install_key_arg** %5, align 8
  %40 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add i64 64, %41
  %43 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %38, i64 %42)
  store %struct.sk_buff* %43, %struct.sk_buff** %7, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %45 = icmp ne %struct.sk_buff* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %37
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  %49 = call %struct.sk_buff* @ERR_PTR(i32 %48)
  store %struct.sk_buff* %49, %struct.sk_buff** %3, align 8
  br label %140

50:                                               ; preds = %37
  %51 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.wmi_vdev_install_key_cmd*
  store %struct.wmi_vdev_install_key_cmd* %54, %struct.wmi_vdev_install_key_cmd** %6, align 8
  %55 = load %struct.wmi_vdev_install_key_arg*, %struct.wmi_vdev_install_key_arg** %5, align 8
  %56 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i8* @__cpu_to_le32(i64 %57)
  %59 = load %struct.wmi_vdev_install_key_cmd*, %struct.wmi_vdev_install_key_cmd** %6, align 8
  %60 = getelementptr inbounds %struct.wmi_vdev_install_key_cmd, %struct.wmi_vdev_install_key_cmd* %59, i32 0, i32 8
  store i8* %58, i8** %60, align 8
  %61 = load %struct.wmi_vdev_install_key_arg*, %struct.wmi_vdev_install_key_arg** %5, align 8
  %62 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = call i8* @__cpu_to_le32(i64 %63)
  %65 = load %struct.wmi_vdev_install_key_cmd*, %struct.wmi_vdev_install_key_cmd** %6, align 8
  %66 = getelementptr inbounds %struct.wmi_vdev_install_key_cmd, %struct.wmi_vdev_install_key_cmd* %65, i32 0, i32 7
  store i8* %64, i8** %66, align 8
  %67 = load %struct.wmi_vdev_install_key_arg*, %struct.wmi_vdev_install_key_arg** %5, align 8
  %68 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = call i8* @__cpu_to_le32(i64 %69)
  %71 = load %struct.wmi_vdev_install_key_cmd*, %struct.wmi_vdev_install_key_cmd** %6, align 8
  %72 = getelementptr inbounds %struct.wmi_vdev_install_key_cmd, %struct.wmi_vdev_install_key_cmd* %71, i32 0, i32 6
  store i8* %70, i8** %72, align 8
  %73 = load %struct.wmi_vdev_install_key_arg*, %struct.wmi_vdev_install_key_arg** %5, align 8
  %74 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i8* @__cpu_to_le32(i64 %75)
  %77 = load %struct.wmi_vdev_install_key_cmd*, %struct.wmi_vdev_install_key_cmd** %6, align 8
  %78 = getelementptr inbounds %struct.wmi_vdev_install_key_cmd, %struct.wmi_vdev_install_key_cmd* %77, i32 0, i32 5
  store i8* %76, i8** %78, align 8
  %79 = load %struct.wmi_vdev_install_key_arg*, %struct.wmi_vdev_install_key_arg** %5, align 8
  %80 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i8* @__cpu_to_le32(i64 %81)
  %83 = load %struct.wmi_vdev_install_key_cmd*, %struct.wmi_vdev_install_key_cmd** %6, align 8
  %84 = getelementptr inbounds %struct.wmi_vdev_install_key_cmd, %struct.wmi_vdev_install_key_cmd* %83, i32 0, i32 4
  store i8* %82, i8** %84, align 8
  %85 = load %struct.wmi_vdev_install_key_arg*, %struct.wmi_vdev_install_key_arg** %5, align 8
  %86 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = call i8* @__cpu_to_le32(i64 %87)
  %89 = load %struct.wmi_vdev_install_key_cmd*, %struct.wmi_vdev_install_key_cmd** %6, align 8
  %90 = getelementptr inbounds %struct.wmi_vdev_install_key_cmd, %struct.wmi_vdev_install_key_cmd* %89, i32 0, i32 3
  store i8* %88, i8** %90, align 8
  %91 = load %struct.wmi_vdev_install_key_arg*, %struct.wmi_vdev_install_key_arg** %5, align 8
  %92 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %91, i32 0, i32 6
  %93 = load i64, i64* %92, align 8
  %94 = call i8* @__cpu_to_le32(i64 %93)
  %95 = load %struct.wmi_vdev_install_key_cmd*, %struct.wmi_vdev_install_key_cmd** %6, align 8
  %96 = getelementptr inbounds %struct.wmi_vdev_install_key_cmd, %struct.wmi_vdev_install_key_cmd* %95, i32 0, i32 2
  store i8* %94, i8** %96, align 8
  %97 = load %struct.wmi_vdev_install_key_arg*, %struct.wmi_vdev_install_key_arg** %5, align 8
  %98 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %97, i32 0, i32 8
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %50
  %102 = load %struct.wmi_vdev_install_key_cmd*, %struct.wmi_vdev_install_key_cmd** %6, align 8
  %103 = getelementptr inbounds %struct.wmi_vdev_install_key_cmd, %struct.wmi_vdev_install_key_cmd* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.wmi_vdev_install_key_arg*, %struct.wmi_vdev_install_key_arg** %5, align 8
  %107 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %106, i32 0, i32 8
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @ether_addr_copy(i32 %105, i32 %108)
  br label %110

110:                                              ; preds = %101, %50
  %111 = load %struct.wmi_vdev_install_key_arg*, %struct.wmi_vdev_install_key_arg** %5, align 8
  %112 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %111, i32 0, i32 7
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %126

115:                                              ; preds = %110
  %116 = load %struct.wmi_vdev_install_key_cmd*, %struct.wmi_vdev_install_key_cmd** %6, align 8
  %117 = getelementptr inbounds %struct.wmi_vdev_install_key_cmd, %struct.wmi_vdev_install_key_cmd* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.wmi_vdev_install_key_arg*, %struct.wmi_vdev_install_key_arg** %5, align 8
  %120 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %119, i32 0, i32 7
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.wmi_vdev_install_key_arg*, %struct.wmi_vdev_install_key_arg** %5, align 8
  %123 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @memcpy(i32 %118, i32* %121, i64 %124)
  br label %126

126:                                              ; preds = %115, %110
  %127 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %128 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %129 = load %struct.wmi_vdev_install_key_arg*, %struct.wmi_vdev_install_key_arg** %5, align 8
  %130 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.wmi_vdev_install_key_arg*, %struct.wmi_vdev_install_key_arg** %5, align 8
  %133 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.wmi_vdev_install_key_arg*, %struct.wmi_vdev_install_key_arg** %5, align 8
  %136 = getelementptr inbounds %struct.wmi_vdev_install_key_arg, %struct.wmi_vdev_install_key_arg* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @ath10k_dbg(%struct.ath10k* %127, i32 %128, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %131, i64 %134, i64 %137)
  %139 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %139, %struct.sk_buff** %3, align 8
  br label %140

140:                                              ; preds = %126, %46, %33, %18
  %141 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %141
}

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i64) #1

declare dso_local i8* @__cpu_to_le32(i64) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
