; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_rx.c_i2400m_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_rx.c_i2400m_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.device = type { i32 }
%struct.i2400m_msg_hdr = type { i32*, i32 }

@.str = private unnamed_addr constant [30 x i8] c"(i2400m %p skb %p [size %u])\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@pld = common dso_local global i32 0, align 4
@I2400M_PL_ALIGN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [91 x i8] c"RX: HW BUG? message too short (%u bytes) for %u payload descriptors (%zu each, total %zu)\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"(i2400m %p skb %p [size %u]) = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2400m_rx(%struct.i2400m* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.i2400m*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.i2400m_msg_hdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.i2400m* %0, %struct.i2400m** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %15 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %16 = call %struct.device* @i2400m_dev(%struct.i2400m* %15)
  store %struct.device* %16, %struct.device** %7, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %14, align 4
  %20 = load %struct.device*, %struct.device** %7, align 8
  %21 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = load i32, i32* %14, align 4
  %24 = call i32 @d_fnstart(i32 4, %struct.device* %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.i2400m* %21, %struct.sk_buff* %22, i32 %23)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = bitcast i8* %28 to %struct.i2400m_msg_hdr*
  store %struct.i2400m_msg_hdr* %29, %struct.i2400m_msg_hdr** %8, align 8
  %30 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %31 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %8, align 8
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @i2400m_rx_msg_hdr_check(%struct.i2400m* %30, %struct.i2400m_msg_hdr* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  br label %189

37:                                               ; preds = %2
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  %40 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %8, align 8
  %41 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @le16_to_cpu(i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %8, align 8
  %45 = load i32, i32* @pld, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i64 @struct_size(%struct.i2400m_msg_hdr* %44, i32 %45, i32 %46)
  store i64 %47, i64* %9, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i32, i32* @I2400M_PL_ALIGN, align 4
  %50 = call i64 @ALIGN(i64 %48, i32 %49)
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i32, i32* %14, align 4
  %53 = zext i32 %52 to i64
  %54 = icmp ugt i64 %51, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %37
  %56 = load %struct.device*, %struct.device** %7, align 8
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @dev_err(%struct.device* %56, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58, i32 4, i64 %59)
  br label %188

61:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %119, %61
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %122

66:                                               ; preds = %62
  %67 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %8, align 8
  %68 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = call i64 @i2400m_pld_size(i32* %72)
  store i64 %73, i64* %10, align 8
  %74 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %75 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %8, align 8
  %76 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i64, i64* %9, align 8
  %82 = load i32, i32* %14, align 4
  %83 = call i32 @i2400m_rx_pl_descr_check(%struct.i2400m* %74, i32* %80, i64 %81, i32 %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %66
  br label %187

87:                                               ; preds = %66
  %88 = load i32, i32* %12, align 4
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %95, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %12, align 4
  %93 = sub i32 %92, 1
  %94 = icmp eq i32 %91, %93
  br label %95

95:                                               ; preds = %90, %87
  %96 = phi i1 [ true, %87 ], [ %94, %90 ]
  %97 = zext i1 %96 to i32
  store i32 %97, i32* %13, align 4
  %98 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %100 = load i32, i32* %13, align 4
  %101 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %8, align 8
  %102 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %108 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %9, align 8
  %111 = add i64 %109, %110
  %112 = call i32 @i2400m_rx_payload(%struct.i2400m* %98, %struct.sk_buff* %99, i32 %100, i32* %106, i64 %111)
  %113 = load i64, i64* %10, align 8
  %114 = load i32, i32* @I2400M_PL_ALIGN, align 4
  %115 = call i64 @ALIGN(i64 %113, i32 %114)
  %116 = load i64, i64* %9, align 8
  %117 = add i64 %116, %115
  store i64 %117, i64* %9, align 8
  %118 = call i32 (...) @cond_resched()
  br label %119

119:                                              ; preds = %95
  %120 = load i32, i32* %5, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %5, align 4
  br label %62

122:                                              ; preds = %62
  %123 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %124 = call i32 @kfree_skb(%struct.sk_buff* %123)
  %125 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %126 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %125, i32 0, i32 6
  %127 = load i64, i64* %11, align 8
  %128 = call i32 @spin_lock_irqsave(i32* %126, i64 %127)
  %129 = load i32, i32* %5, align 4
  %130 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %131 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, %129
  store i32 %133, i32* %131, align 4
  %134 = load i32, i32* %5, align 4
  %135 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %136 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp sgt i32 %134, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %122
  %140 = load i32, i32* %5, align 4
  %141 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %142 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  br label %143

143:                                              ; preds = %139, %122
  %144 = load i32, i32* %5, align 4
  %145 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %146 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = icmp slt i32 %144, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %143
  %150 = load i32, i32* %5, align 4
  %151 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %152 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 4
  br label %153

153:                                              ; preds = %149, %143
  %154 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %155 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %154, i32 0, i32 7
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 4
  %158 = load i32, i32* %14, align 4
  %159 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %160 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = add i32 %161, %158
  store i32 %162, i32* %160, align 4
  %163 = load i32, i32* %14, align 4
  %164 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %165 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = icmp ult i32 %163, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %153
  %169 = load i32, i32* %14, align 4
  %170 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %171 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %170, i32 0, i32 4
  store i32 %169, i32* %171, align 4
  br label %172

172:                                              ; preds = %168, %153
  %173 = load i32, i32* %14, align 4
  %174 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %175 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 4
  %177 = icmp ugt i32 %173, %176
  br i1 %177, label %178, label %182

178:                                              ; preds = %172
  %179 = load i32, i32* %14, align 4
  %180 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %181 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %180, i32 0, i32 5
  store i32 %179, i32* %181, align 4
  br label %182

182:                                              ; preds = %178, %172
  %183 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %184 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %183, i32 0, i32 6
  %185 = load i64, i64* %11, align 8
  %186 = call i32 @spin_unlock_irqrestore(i32* %184, i64 %185)
  br label %187

187:                                              ; preds = %182, %86
  br label %188

188:                                              ; preds = %187, %55
  br label %189

189:                                              ; preds = %188, %36
  %190 = load %struct.device*, %struct.device** %7, align 8
  %191 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %192 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %193 = load i32, i32* %14, align 4
  %194 = load i32, i32* %6, align 4
  %195 = call i32 @d_fnend(i32 4, %struct.device* %190, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), %struct.i2400m* %191, %struct.sk_buff* %192, i32 %193, i32 %194)
  %196 = load i32, i32* %6, align 4
  ret i32 %196
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400m*, %struct.sk_buff*, i32) #1

declare dso_local i32 @i2400m_rx_msg_hdr_check(%struct.i2400m*, %struct.i2400m_msg_hdr*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @struct_size(%struct.i2400m_msg_hdr*, i32, i32) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32, i32, i64) #1

declare dso_local i64 @i2400m_pld_size(i32*) #1

declare dso_local i32 @i2400m_rx_pl_descr_check(%struct.i2400m*, i32*, i64, i32) #1

declare dso_local i32 @i2400m_rx_payload(%struct.i2400m*, %struct.sk_buff*, i32, i32*, i64) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400m*, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
