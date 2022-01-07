; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_tlv.c_fm10k_tlv_msg_test_generate_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_tlv.c_fm10k_tlv_msg_test_generate_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FM10K_TEST_MSG_STRING = common dso_local global i32 0, align 4
@test_str = common dso_local global i32 0, align 4
@FM10K_TEST_MSG_MAC_ADDR = common dso_local global i32 0, align 4
@test_mac = common dso_local global i32 0, align 4
@test_vlan = common dso_local global i32 0, align 4
@FM10K_TEST_MSG_U8 = common dso_local global i32 0, align 4
@test_u8 = common dso_local global i32 0, align 4
@FM10K_TEST_MSG_U16 = common dso_local global i32 0, align 4
@test_u16 = common dso_local global i32 0, align 4
@FM10K_TEST_MSG_U32 = common dso_local global i32 0, align 4
@test_u32 = common dso_local global i32 0, align 4
@FM10K_TEST_MSG_U64 = common dso_local global i32 0, align 4
@test_u64 = common dso_local global i32 0, align 4
@FM10K_TEST_MSG_S8 = common dso_local global i32 0, align 4
@test_s8 = common dso_local global i32 0, align 4
@FM10K_TEST_MSG_S16 = common dso_local global i32 0, align 4
@test_s16 = common dso_local global i32 0, align 4
@FM10K_TEST_MSG_S32 = common dso_local global i32 0, align 4
@test_s32 = common dso_local global i32 0, align 4
@FM10K_TEST_MSG_S64 = common dso_local global i32 0, align 4
@test_s64 = common dso_local global i32 0, align 4
@FM10K_TEST_MSG_LE_STRUCT = common dso_local global i32 0, align 4
@test_le = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @fm10k_tlv_msg_test_generate_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_tlv_msg_test_generate_data(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @FM10K_TEST_MSG_STRING, align 4
  %7 = call i32 @BIT(i32 %6)
  %8 = and i32 %5, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @FM10K_TEST_MSG_STRING, align 4
  %13 = load i32, i32* @test_str, align 4
  %14 = call i32 @fm10k_tlv_attr_put_null_string(i32* %11, i32 %12, i32 %13)
  br label %15

15:                                               ; preds = %10, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @FM10K_TEST_MSG_MAC_ADDR, align 4
  %18 = call i32 @BIT(i32 %17)
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* @FM10K_TEST_MSG_MAC_ADDR, align 4
  %24 = load i32, i32* @test_mac, align 4
  %25 = load i32, i32* @test_vlan, align 4
  %26 = call i32 @fm10k_tlv_attr_put_mac_vlan(i32* %22, i32 %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %21, %15
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @FM10K_TEST_MSG_U8, align 4
  %30 = call i32 @BIT(i32 %29)
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* @FM10K_TEST_MSG_U8, align 4
  %36 = load i32, i32* @test_u8, align 4
  %37 = call i32 @fm10k_tlv_attr_put_u8(i32* %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %33, %27
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @FM10K_TEST_MSG_U16, align 4
  %41 = call i32 @BIT(i32 %40)
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* @FM10K_TEST_MSG_U16, align 4
  %47 = load i32, i32* @test_u16, align 4
  %48 = call i32 @fm10k_tlv_attr_put_u16(i32* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %38
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @FM10K_TEST_MSG_U32, align 4
  %52 = call i32 @BIT(i32 %51)
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* @FM10K_TEST_MSG_U32, align 4
  %58 = load i32, i32* @test_u32, align 4
  %59 = call i32 @fm10k_tlv_attr_put_u32(i32* %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %49
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @FM10K_TEST_MSG_U64, align 4
  %63 = call i32 @BIT(i32 %62)
  %64 = and i32 %61, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load i32*, i32** %3, align 8
  %68 = load i32, i32* @FM10K_TEST_MSG_U64, align 4
  %69 = load i32, i32* @test_u64, align 4
  %70 = call i32 @fm10k_tlv_attr_put_u64(i32* %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %66, %60
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @FM10K_TEST_MSG_S8, align 4
  %74 = call i32 @BIT(i32 %73)
  %75 = and i32 %72, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = load i32*, i32** %3, align 8
  %79 = load i32, i32* @FM10K_TEST_MSG_S8, align 4
  %80 = load i32, i32* @test_s8, align 4
  %81 = call i32 @fm10k_tlv_attr_put_s8(i32* %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %77, %71
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @FM10K_TEST_MSG_S16, align 4
  %85 = call i32 @BIT(i32 %84)
  %86 = and i32 %83, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = load i32*, i32** %3, align 8
  %90 = load i32, i32* @FM10K_TEST_MSG_S16, align 4
  %91 = load i32, i32* @test_s16, align 4
  %92 = call i32 @fm10k_tlv_attr_put_s16(i32* %89, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %88, %82
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @FM10K_TEST_MSG_S32, align 4
  %96 = call i32 @BIT(i32 %95)
  %97 = and i32 %94, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load i32*, i32** %3, align 8
  %101 = load i32, i32* @FM10K_TEST_MSG_S32, align 4
  %102 = load i32, i32* @test_s32, align 4
  %103 = call i32 @fm10k_tlv_attr_put_s32(i32* %100, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %99, %93
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @FM10K_TEST_MSG_S64, align 4
  %107 = call i32 @BIT(i32 %106)
  %108 = and i32 %105, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %104
  %111 = load i32*, i32** %3, align 8
  %112 = load i32, i32* @FM10K_TEST_MSG_S64, align 4
  %113 = load i32, i32* @test_s64, align 4
  %114 = call i32 @fm10k_tlv_attr_put_s64(i32* %111, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %110, %104
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @FM10K_TEST_MSG_LE_STRUCT, align 4
  %118 = call i32 @BIT(i32 %117)
  %119 = and i32 %116, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %115
  %122 = load i32*, i32** %3, align 8
  %123 = load i32, i32* @FM10K_TEST_MSG_LE_STRUCT, align 4
  %124 = load i32, i32* @test_le, align 4
  %125 = call i32 @fm10k_tlv_attr_put_le_struct(i32* %122, i32 %123, i32 %124, i32 8)
  br label %126

126:                                              ; preds = %121, %115
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @fm10k_tlv_attr_put_null_string(i32*, i32, i32) #1

declare dso_local i32 @fm10k_tlv_attr_put_mac_vlan(i32*, i32, i32, i32) #1

declare dso_local i32 @fm10k_tlv_attr_put_u8(i32*, i32, i32) #1

declare dso_local i32 @fm10k_tlv_attr_put_u16(i32*, i32, i32) #1

declare dso_local i32 @fm10k_tlv_attr_put_u32(i32*, i32, i32) #1

declare dso_local i32 @fm10k_tlv_attr_put_u64(i32*, i32, i32) #1

declare dso_local i32 @fm10k_tlv_attr_put_s8(i32*, i32, i32) #1

declare dso_local i32 @fm10k_tlv_attr_put_s16(i32*, i32, i32) #1

declare dso_local i32 @fm10k_tlv_attr_put_s32(i32*, i32, i32) #1

declare dso_local i32 @fm10k_tlv_attr_put_s64(i32*, i32, i32) #1

declare dso_local i32 @fm10k_tlv_attr_put_le_struct(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
