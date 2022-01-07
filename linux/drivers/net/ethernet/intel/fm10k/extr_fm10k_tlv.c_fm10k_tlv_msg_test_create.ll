; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_tlv.c_fm10k_tlv_msg_test_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_tlv.c_fm10k_tlv_msg_test_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FM10K_TLV_MSG_ID_TEST = common dso_local global i32 0, align 4
@FM10K_TEST_MSG_NESTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fm10k_tlv_msg_test_create(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %5, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* @FM10K_TLV_MSG_ID_TEST, align 4
  %8 = call i32 @fm10k_tlv_msg_init(i32* %6, i32 %7)
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @fm10k_tlv_msg_test_generate_data(i32* %9, i32 %10)
  %12 = load i32, i32* @FM10K_TEST_MSG_NESTED, align 4
  %13 = load i32, i32* %4, align 4
  %14 = ashr i32 %13, %12
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @FM10K_TEST_MSG_NESTED, align 4
  %20 = call i32* @fm10k_tlv_attr_nest_start(i32* %18, i32 %19)
  store i32* %20, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @fm10k_tlv_msg_test_generate_data(i32* %21, i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @fm10k_tlv_attr_nest_stop(i32* %24)
  br label %26

26:                                               ; preds = %17, %2
  ret void
}

declare dso_local i32 @fm10k_tlv_msg_init(i32*, i32) #1

declare dso_local i32 @fm10k_tlv_msg_test_generate_data(i32*, i32) #1

declare dso_local i32* @fm10k_tlv_attr_nest_start(i32*, i32) #1

declare dso_local i32 @fm10k_tlv_attr_nest_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
