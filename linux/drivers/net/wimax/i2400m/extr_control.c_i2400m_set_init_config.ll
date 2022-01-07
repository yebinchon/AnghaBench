; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_control.c_i2400m_set_init_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_control.c_i2400m_set_init_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32 }
%struct.i2400m_tlv_hdr = type { i32 }
%struct.device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.i2400m_l3l4_hdr = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [29 x i8] c"(i2400m %p arg %p args %zu)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@I2400M_MT_SET_INIT_CONFIG = common dso_local global i32 0, align 4
@I2400M_L3L4_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to issue 'init config' command: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"'init config' (0x%04x) command failed: %d - %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"(i2400m %p arg %p args %zu) = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2400m*, %struct.i2400m_tlv_hdr**, i64)* @i2400m_set_init_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2400m_set_init_config(%struct.i2400m* %0, %struct.i2400m_tlv_hdr** %1, i64 %2) #0 {
  %4 = alloca %struct.i2400m*, align 8
  %5 = alloca %struct.i2400m_tlv_hdr**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.i2400m_l3l4_hdr*, align 8
  %11 = alloca [32 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.i2400m_tlv_hdr*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store %struct.i2400m* %0, %struct.i2400m** %4, align 8
  store %struct.i2400m_tlv_hdr** %1, %struct.i2400m_tlv_hdr*** %5, align 8
  store i64 %2, i64* %6, align 8
  %18 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %19 = call %struct.device* @i2400m_dev(%struct.i2400m* %18)
  store %struct.device* %19, %struct.device** %8, align 8
  %20 = load %struct.device*, %struct.device** %8, align 8
  %21 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %22 = load %struct.i2400m_tlv_hdr**, %struct.i2400m_tlv_hdr*** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @d_fnstart(i32 3, %struct.device* %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.i2400m* %21, %struct.i2400m_tlv_hdr** %22, i64 %23)
  store i32 0, i32* %7, align 4
  %25 = load i64, i64* %6, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %152

28:                                               ; preds = %3
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %29

29:                                               ; preds = %50, %28
  %30 = load i32, i32* %12, align 4
  %31 = zext i32 %30 to i64
  %32 = load i64, i64* %6, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %29
  %35 = load %struct.i2400m_tlv_hdr**, %struct.i2400m_tlv_hdr*** %5, align 8
  %36 = load i32, i32* %12, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.i2400m_tlv_hdr*, %struct.i2400m_tlv_hdr** %35, i64 %37
  %39 = load %struct.i2400m_tlv_hdr*, %struct.i2400m_tlv_hdr** %38, align 8
  store %struct.i2400m_tlv_hdr* %39, %struct.i2400m_tlv_hdr** %15, align 8
  %40 = load %struct.i2400m_tlv_hdr*, %struct.i2400m_tlv_hdr** %15, align 8
  %41 = getelementptr inbounds %struct.i2400m_tlv_hdr, %struct.i2400m_tlv_hdr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le16_to_cpu(i32 %42)
  %44 = sext i32 %43 to i64
  %45 = add i64 4, %44
  %46 = load i32, i32* %13, align 4
  %47 = zext i32 %46 to i64
  %48 = add i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %34
  %51 = load i32, i32* %12, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %12, align 4
  br label %29

53:                                               ; preds = %29
  %54 = load i32, i32* %12, align 4
  %55 = icmp uge i32 %54, 9
  %56 = zext i1 %55 to i32
  %57 = call i32 @WARN_ON(i32 %56)
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %13, align 4
  %61 = zext i32 %60 to i64
  %62 = add i64 24, %61
  %63 = trunc i64 %62 to i32
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i8* @kzalloc(i32 %63, i32 %64)
  store i8* %65, i8** %16, align 8
  %66 = load i8*, i8** %16, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %53
  br label %151

69:                                               ; preds = %53
  %70 = load i8*, i8** %16, align 8
  %71 = bitcast i8* %70 to %struct.i2400m_l3l4_hdr*
  store %struct.i2400m_l3l4_hdr* %71, %struct.i2400m_l3l4_hdr** %10, align 8
  %72 = load i32, i32* @I2400M_MT_SET_INIT_CONFIG, align 4
  %73 = call i8* @cpu_to_le16(i32 %72)
  %74 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %10, align 8
  %75 = getelementptr inbounds %struct.i2400m_l3l4_hdr, %struct.i2400m_l3l4_hdr* %74, i32 0, i32 2
  store i8* %73, i8** %75, align 8
  %76 = load i32, i32* %13, align 4
  %77 = call i8* @cpu_to_le16(i32 %76)
  %78 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %10, align 8
  %79 = getelementptr inbounds %struct.i2400m_l3l4_hdr, %struct.i2400m_l3l4_hdr* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  %80 = load i32, i32* @I2400M_L3L4_VERSION, align 4
  %81 = call i8* @cpu_to_le16(i32 %80)
  %82 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %10, align 8
  %83 = getelementptr inbounds %struct.i2400m_l3l4_hdr, %struct.i2400m_l3l4_hdr* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  %84 = load i8*, i8** %16, align 8
  %85 = getelementptr i8, i8* %84, i64 24
  store i8* %85, i8** %17, align 8
  store i32 0, i32* %12, align 4
  br label %86

86:                                               ; preds = %112, %69
  %87 = load i32, i32* %12, align 4
  %88 = zext i32 %87 to i64
  %89 = load i64, i64* %6, align 8
  %90 = icmp ult i64 %88, %89
  br i1 %90, label %91, label %115

91:                                               ; preds = %86
  %92 = load %struct.i2400m_tlv_hdr**, %struct.i2400m_tlv_hdr*** %5, align 8
  %93 = load i32, i32* %12, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.i2400m_tlv_hdr*, %struct.i2400m_tlv_hdr** %92, i64 %94
  %96 = load %struct.i2400m_tlv_hdr*, %struct.i2400m_tlv_hdr** %95, align 8
  store %struct.i2400m_tlv_hdr* %96, %struct.i2400m_tlv_hdr** %15, align 8
  %97 = load %struct.i2400m_tlv_hdr*, %struct.i2400m_tlv_hdr** %15, align 8
  %98 = getelementptr inbounds %struct.i2400m_tlv_hdr, %struct.i2400m_tlv_hdr* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @le16_to_cpu(i32 %99)
  %101 = sext i32 %100 to i64
  %102 = add i64 4, %101
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %14, align 4
  %104 = load i8*, i8** %17, align 8
  %105 = load %struct.i2400m_tlv_hdr*, %struct.i2400m_tlv_hdr** %15, align 8
  %106 = load i32, i32* %14, align 4
  %107 = call i32 @memcpy(i8* %104, %struct.i2400m_tlv_hdr* %105, i32 %106)
  %108 = load i32, i32* %14, align 4
  %109 = load i8*, i8** %17, align 8
  %110 = zext i32 %108 to i64
  %111 = getelementptr i8, i8* %109, i64 %110
  store i8* %111, i8** %17, align 8
  br label %112

112:                                              ; preds = %91
  %113 = load i32, i32* %12, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %12, align 4
  br label %86

115:                                              ; preds = %86
  %116 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %117 = load i8*, i8** %16, align 8
  %118 = load i32, i32* %13, align 4
  %119 = zext i32 %118 to i64
  %120 = add i64 24, %119
  %121 = trunc i64 %120 to i32
  %122 = call %struct.sk_buff* @i2400m_msg_to_dev(%struct.i2400m* %116, i8* %117, i32 %121)
  store %struct.sk_buff* %122, %struct.sk_buff** %9, align 8
  %123 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %124 = call i32 @PTR_ERR(%struct.sk_buff* %123)
  store i32 %124, i32* %7, align 4
  %125 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %126 = call i64 @IS_ERR(%struct.sk_buff* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %115
  %129 = load %struct.device*, %struct.device** %8, align 8
  %130 = load i32, i32* %7, align 4
  %131 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %129, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %130)
  br label %148

132:                                              ; preds = %115
  %133 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %134 = call i32 @wimax_msg_data(%struct.sk_buff* %133)
  %135 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %136 = call i32 @i2400m_msg_check_status(i32 %134, i8* %135, i32 32)
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %132
  %140 = load %struct.device*, %struct.device** %8, align 8
  %141 = load i32, i32* @I2400M_MT_SET_INIT_CONFIG, align 4
  %142 = load i32, i32* %7, align 4
  %143 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %144 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %140, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %141, i32 %142, i8* %143)
  br label %145

145:                                              ; preds = %139, %132
  %146 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %147 = call i32 @kfree_skb(%struct.sk_buff* %146)
  br label %148

148:                                              ; preds = %145, %128
  %149 = load i8*, i8** %16, align 8
  %150 = call i32 @kfree(i8* %149)
  br label %151

151:                                              ; preds = %148, %68
  br label %152

152:                                              ; preds = %151, %27
  %153 = load %struct.device*, %struct.device** %8, align 8
  %154 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %155 = load %struct.i2400m_tlv_hdr**, %struct.i2400m_tlv_hdr*** %5, align 8
  %156 = load i64, i64* %6, align 8
  %157 = load i32, i32* %7, align 4
  %158 = call i32 @d_fnend(i32 3, %struct.device* %153, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), %struct.i2400m* %154, %struct.i2400m_tlv_hdr** %155, i64 %156, i32 %157)
  %159 = load i32, i32* %7, align 4
  ret i32 %159
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400m*, %struct.i2400m_tlv_hdr**, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i8*, %struct.i2400m_tlv_hdr*, i32) #1

declare dso_local %struct.sk_buff* @i2400m_msg_to_dev(%struct.i2400m*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @i2400m_msg_check_status(i32, i8*, i32) #1

declare dso_local i32 @wimax_msg_data(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400m*, %struct.i2400m_tlv_hdr**, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
