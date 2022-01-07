; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_janz-ican3.c_ican3_set_bus_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_janz-ican3.c_ican3_set_bus_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ican3_dev = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.can_bittiming }
%struct.can_bittiming = type { i32, i32, i32, i32, i32 }
%struct.ican3_msg = type { i32*, i8*, i32 }

@CAN_CTRLMODE_3_SAMPLES = common dso_local global i32 0, align 4
@ICAN3_FWTYPE_ICANOS = common dso_local global i64 0, align 8
@MSG_CBTRREQ = common dso_local global i32 0, align 4
@MSG_CONREQ = common dso_local global i32 0, align 4
@MSG_COFFREQ = common dso_local global i32 0, align 4
@ICAN3_FWTYPE_CAL_CANOPEN = common dso_local global i64 0, align 8
@MSG_LMTS = common dso_local global i32 0, align 4
@LMTS_BUSON_REQ = common dso_local global i32 0, align 4
@LMTS_BUSOFF_REQ = common dso_local global i32 0, align 4
@MSG_NMTS = common dso_local global i32 0, align 4
@NMTS_CREATE_NODE_REQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"locnod1\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ican3_dev*, i32)* @ican3_set_bus_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ican3_set_bus_state(%struct.ican3_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ican3_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.can_bittiming*, align 8
  %7 = alloca %struct.ican3_msg, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ican3_dev* %0, %struct.ican3_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %12 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store %struct.can_bittiming* %13, %struct.can_bittiming** %6, align 8
  %14 = load %struct.can_bittiming*, %struct.can_bittiming** %6, align 8
  %15 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %16, 1
  %18 = and i32 %17, 63
  %19 = load %struct.can_bittiming*, %struct.can_bittiming** %6, align 8
  %20 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 1
  %23 = and i32 %22, 3
  %24 = shl i32 %23, 6
  %25 = or i32 %18, %24
  store i32 %25, i32* %8, align 4
  %26 = load %struct.can_bittiming*, %struct.can_bittiming** %6, align 8
  %27 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.can_bittiming*, %struct.can_bittiming** %6, align 8
  %30 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %28, %31
  %33 = sub nsw i32 %32, 1
  %34 = and i32 %33, 15
  %35 = load %struct.can_bittiming*, %struct.can_bittiming** %6, align 8
  %36 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 1
  %39 = and i32 %38, 7
  %40 = shl i32 %39, 4
  %41 = or i32 %34, %40
  store i32 %41, i32* %9, align 4
  %42 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %43 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @CAN_CTRLMODE_3_SAMPLES, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %2
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, 128
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %49, %2
  %53 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %54 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @ICAN3_FWTYPE_ICANOS, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %103

58:                                               ; preds = %52
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %88

61:                                               ; preds = %58
  %62 = call i32 @memset(%struct.ican3_msg* %7, i32 0, i32 24)
  %63 = load i32, i32* @MSG_CBTRREQ, align 4
  %64 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %7, i32 0, i32 2
  store i32 %63, i32* %64, align 8
  %65 = call i8* @cpu_to_le16(i32 4)
  %66 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %7, i32 0, i32 1
  store i8* %65, i8** %66, align 8
  %67 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %7, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 0, i32* %69, align 4
  %70 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %7, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  store i32 0, i32* %72, align 4
  %73 = load i32, i32* %8, align 4
  %74 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %7, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* %9, align 4
  %78 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %7, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 3
  store i32 %77, i32* %80, align 4
  %81 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %82 = call i32 @ican3_send_msg(%struct.ican3_dev* %81, %struct.ican3_msg* %7)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %61
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %3, align 4
  br label %183

87:                                               ; preds = %61
  br label %88

88:                                               ; preds = %87, %58
  %89 = call i32 @memset(%struct.ican3_msg* %7, i32 0, i32 24)
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i32, i32* @MSG_CONREQ, align 4
  br label %96

94:                                               ; preds = %88
  %95 = load i32, i32* @MSG_COFFREQ, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  %98 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %7, i32 0, i32 2
  store i32 %97, i32* %98, align 8
  %99 = call i8* @cpu_to_le16(i32 0)
  %100 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %7, i32 0, i32 1
  store i8* %99, i8** %100, align 8
  %101 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %102 = call i32 @ican3_send_msg(%struct.ican3_dev* %101, %struct.ican3_msg* %7)
  store i32 %102, i32* %3, align 4
  br label %183

103:                                              ; preds = %52
  %104 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %105 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @ICAN3_FWTYPE_CAL_CANOPEN, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %179

109:                                              ; preds = %103
  %110 = call i32 @memset(%struct.ican3_msg* %7, i32 0, i32 24)
  %111 = load i32, i32* @MSG_LMTS, align 4
  %112 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %7, i32 0, i32 2
  store i32 %111, i32* %112, align 8
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %133

115:                                              ; preds = %109
  %116 = call i8* @cpu_to_le16(i32 4)
  %117 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %7, i32 0, i32 1
  store i8* %116, i8** %117, align 8
  %118 = load i32, i32* @LMTS_BUSON_REQ, align 4
  %119 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %7, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  store i32 %118, i32* %121, align 4
  %122 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %7, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  store i32 0, i32* %124, align 4
  %125 = load i32, i32* %8, align 4
  %126 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %7, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 2
  store i32 %125, i32* %128, align 4
  %129 = load i32, i32* %9, align 4
  %130 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %7, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 3
  store i32 %129, i32* %132, align 4
  br label %143

133:                                              ; preds = %109
  %134 = call i8* @cpu_to_le16(i32 2)
  %135 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %7, i32 0, i32 1
  store i8* %134, i8** %135, align 8
  %136 = load i32, i32* @LMTS_BUSOFF_REQ, align 4
  %137 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %7, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  store i32 %136, i32* %139, align 4
  %140 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %7, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  store i32 0, i32* %142, align 4
  br label %143

143:                                              ; preds = %133, %115
  %144 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %145 = call i32 @ican3_send_msg(%struct.ican3_dev* %144, %struct.ican3_msg* %7)
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %10, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = load i32, i32* %10, align 4
  store i32 %149, i32* %3, align 4
  br label %183

150:                                              ; preds = %143
  %151 = load i32, i32* %5, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %178

153:                                              ; preds = %150
  %154 = call i32 @memset(%struct.ican3_msg* %7, i32 0, i32 24)
  %155 = load i32, i32* @MSG_NMTS, align 4
  %156 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %7, i32 0, i32 2
  store i32 %155, i32* %156, align 8
  %157 = call i8* @cpu_to_le16(i32 11)
  %158 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %7, i32 0, i32 1
  store i8* %157, i8** %158, align 8
  %159 = load i32, i32* @NMTS_CREATE_NODE_REQ, align 4
  %160 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %7, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  store i32 %159, i32* %162, align 4
  %163 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %7, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  store i32 0, i32* %165, align 4
  %166 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %7, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 2
  store i32 2, i32* %168, align 4
  %169 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %7, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 3
  store i32 1, i32* %171, align 4
  %172 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %7, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 4
  %175 = call i32 @strcpy(i32* %174, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %176 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %177 = call i32 @ican3_send_msg(%struct.ican3_dev* %176, %struct.ican3_msg* %7)
  store i32 %177, i32* %3, align 4
  br label %183

178:                                              ; preds = %150
  store i32 0, i32* %3, align 4
  br label %183

179:                                              ; preds = %103
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* @ENOTSUPP, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %3, align 4
  br label %183

183:                                              ; preds = %180, %178, %153, %148, %96, %85
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local i32 @memset(%struct.ican3_msg*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ican3_send_msg(%struct.ican3_dev*, %struct.ican3_msg*) #1

declare dso_local i32 @strcpy(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
