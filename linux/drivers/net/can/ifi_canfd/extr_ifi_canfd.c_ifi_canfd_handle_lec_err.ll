; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/ifi_canfd/extr_ifi_canfd.c_ifi_canfd_handle_lec_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/ifi_canfd/extr_ifi_canfd.c_ifi_canfd_handle_lec_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32 }
%struct.ifi_canfd_priv = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.can_frame = type { i32, i64, i32* }
%struct.sk_buff = type { i32 }

@IFI_CANFD_ERROR_CTR = common dso_local global i64 0, align 8
@IFI_CANFD_ERROR_CTR_OVERLOAD_FIRST = common dso_local global i32 0, align 4
@IFI_CANFD_ERROR_CTR_ACK_ERROR_FIRST = common dso_local global i32 0, align 4
@IFI_CANFD_ERROR_CTR_BIT0_ERROR_FIRST = common dso_local global i32 0, align 4
@IFI_CANFD_ERROR_CTR_BIT1_ERROR_FIRST = common dso_local global i32 0, align 4
@IFI_CANFD_ERROR_CTR_STUFF_ERROR_FIRST = common dso_local global i32 0, align 4
@IFI_CANFD_ERROR_CTR_CRC_ERROR_FIRST = common dso_local global i32 0, align 4
@IFI_CANFD_ERROR_CTR_FORM_ERROR_FIRST = common dso_local global i32 0, align 4
@CAN_ERR_PROT = common dso_local global i32 0, align 4
@CAN_ERR_BUSERROR = common dso_local global i32 0, align 4
@CAN_ERR_PROT_OVERLOAD = common dso_local global i32 0, align 4
@CAN_ERR_PROT_LOC_ACK = common dso_local global i32 0, align 4
@CAN_ERR_PROT_BIT0 = common dso_local global i32 0, align 4
@CAN_ERR_PROT_BIT1 = common dso_local global i32 0, align 4
@CAN_ERR_PROT_STUFF = common dso_local global i32 0, align 4
@CAN_ERR_PROT_LOC_CRC_SEQ = common dso_local global i32 0, align 4
@CAN_ERR_PROT_FORM = common dso_local global i32 0, align 4
@IFI_CANFD_ERROR_CTR_ER_RESET = common dso_local global i32 0, align 4
@IFI_CANFD_INTERRUPT_ERROR_COUNTER = common dso_local global i32 0, align 4
@IFI_CANFD_INTERRUPT = common dso_local global i64 0, align 8
@IFI_CANFD_ERROR_CTR_ER_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ifi_canfd_handle_lec_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifi_canfd_handle_lec_err(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ifi_canfd_priv*, align 8
  %5 = alloca %struct.net_device_stats*, align 8
  %6 = alloca %struct.can_frame*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.ifi_canfd_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.ifi_canfd_priv* %11, %struct.ifi_canfd_priv** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  store %struct.net_device_stats* %13, %struct.net_device_stats** %5, align 8
  %14 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %4, align 8
  %15 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IFI_CANFD_ERROR_CTR, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @IFI_CANFD_ERROR_CTR_OVERLOAD_FIRST, align 4
  %21 = load i32, i32* @IFI_CANFD_ERROR_CTR_ACK_ERROR_FIRST, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @IFI_CANFD_ERROR_CTR_BIT0_ERROR_FIRST, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @IFI_CANFD_ERROR_CTR_BIT1_ERROR_FIRST, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @IFI_CANFD_ERROR_CTR_STUFF_ERROR_FIRST, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @IFI_CANFD_ERROR_CTR_CRC_ERROR_FIRST, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @IFI_CANFD_ERROR_CTR_FORM_ERROR_FIRST, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %189

38:                                               ; preds = %1
  %39 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %4, align 8
  %40 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %46 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load %struct.net_device*, %struct.net_device** %3, align 8
  %50 = call %struct.sk_buff* @alloc_can_err_skb(%struct.net_device* %49, %struct.can_frame** %6)
  store %struct.sk_buff* %50, %struct.sk_buff** %7, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %52 = icmp ne %struct.sk_buff* %51, null
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %189

58:                                               ; preds = %38
  %59 = load i32, i32* @CAN_ERR_PROT, align 4
  %60 = load i32, i32* @CAN_ERR_BUSERROR, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %63 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @IFI_CANFD_ERROR_CTR_OVERLOAD_FIRST, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %58
  %71 = load i32, i32* @CAN_ERR_PROT_OVERLOAD, align 4
  %72 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %73 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %71
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %70, %58
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @IFI_CANFD_ERROR_CTR_ACK_ERROR_FIRST, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load i32, i32* @CAN_ERR_PROT_LOC_ACK, align 4
  %85 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %86 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 3
  store i32 %84, i32* %88, align 4
  br label %89

89:                                               ; preds = %83, %78
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @IFI_CANFD_ERROR_CTR_BIT0_ERROR_FIRST, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = load i32, i32* @CAN_ERR_PROT_BIT0, align 4
  %96 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %97 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %95
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %94, %89
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @IFI_CANFD_ERROR_CTR_BIT1_ERROR_FIRST, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %102
  %108 = load i32, i32* @CAN_ERR_PROT_BIT1, align 4
  %109 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %110 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 2
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %108
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %107, %102
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @IFI_CANFD_ERROR_CTR_STUFF_ERROR_FIRST, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %115
  %121 = load i32, i32* @CAN_ERR_PROT_STUFF, align 4
  %122 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %123 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 2
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %121
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %120, %115
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* @IFI_CANFD_ERROR_CTR_CRC_ERROR_FIRST, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %128
  %134 = load i32, i32* @CAN_ERR_PROT_LOC_CRC_SEQ, align 4
  %135 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %136 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 3
  store i32 %134, i32* %138, align 4
  br label %139

139:                                              ; preds = %133, %128
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* @IFI_CANFD_ERROR_CTR_FORM_ERROR_FIRST, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %139
  %145 = load i32, i32* @CAN_ERR_PROT_FORM, align 4
  %146 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %147 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 2
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %145
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %144, %139
  %153 = load i32, i32* @IFI_CANFD_ERROR_CTR_ER_RESET, align 4
  %154 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %4, align 8
  %155 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @IFI_CANFD_ERROR_CTR, align 8
  %158 = add nsw i64 %156, %157
  %159 = call i32 @writel(i32 %153, i64 %158)
  %160 = load i32, i32* @IFI_CANFD_INTERRUPT_ERROR_COUNTER, align 4
  %161 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %4, align 8
  %162 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @IFI_CANFD_INTERRUPT, align 8
  %165 = add nsw i64 %163, %164
  %166 = call i32 @writel(i32 %160, i64 %165)
  %167 = load i32, i32* @IFI_CANFD_ERROR_CTR_ER_ENABLE, align 4
  %168 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %4, align 8
  %169 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @IFI_CANFD_ERROR_CTR, align 8
  %172 = add nsw i64 %170, %171
  %173 = call i32 @writel(i32 %167, i64 %172)
  %174 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %175 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 4
  %178 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %179 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %182 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = add nsw i64 %184, %180
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %182, align 4
  %187 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %188 = call i32 @netif_receive_skb(%struct.sk_buff* %187)
  store i32 1, i32* %2, align 4
  br label %189

189:                                              ; preds = %152, %57, %37
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local %struct.ifi_canfd_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local %struct.sk_buff* @alloc_can_err_skb(%struct.net_device*, %struct.can_frame**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
