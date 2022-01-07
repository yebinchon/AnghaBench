; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_mailbox.c_octeon_mbox_process_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_mailbox.c_octeon_mbox_process_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_mbox = type { i32, i32, i32, i32, i32, i32 }
%struct.octeon_mbox_cmd = type { i32, %struct.TYPE_4__, i32, i32 (i32, %struct.octeon_mbox_cmd*, i32)* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@OCTEON_MBOX_STATE_ERROR = common dso_local global i32 0, align 4
@OCTEON_MBOX_STATE_RESPONSE_PENDING = common dso_local global i32 0, align 4
@OCTEON_MBOX_STATE_RESPONSE_RECEIVING = common dso_local global i32 0, align 4
@OCTEON_MBOX_STATE_IDLE = common dso_local global i8* null, align 8
@OCTEON_PFVFSIG = common dso_local global i32 0, align 4
@OCTEON_MBOX_STATE_RESPONSE_RECEIVED = common dso_local global i32 0, align 4
@OCTEON_MBOX_STATE_REQUEST_RECEIVED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @octeon_mbox_process_message(%struct.octeon_mbox* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.octeon_mbox*, align 8
  %4 = alloca %struct.octeon_mbox_cmd, align 8
  %5 = alloca i64, align 8
  store %struct.octeon_mbox* %0, %struct.octeon_mbox** %3, align 8
  %6 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %7 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %6, i32 0, i32 1
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %11 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @OCTEON_MBOX_STATE_ERROR, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %70

16:                                               ; preds = %1
  %17 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %18 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @OCTEON_MBOX_STATE_RESPONSE_PENDING, align 4
  %21 = load i32, i32* @OCTEON_MBOX_STATE_RESPONSE_RECEIVING, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %56

25:                                               ; preds = %16
  %26 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %27 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %26, i32 0, i32 5
  %28 = call i32 @memcpy(%struct.octeon_mbox_cmd* %4, i32* %27, i32 24)
  %29 = load i8*, i8** @OCTEON_MBOX_STATE_IDLE, align 8
  %30 = ptrtoint i8* %29 to i32
  %31 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %32 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @OCTEON_PFVFSIG, align 4
  %34 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %35 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @writeq(i32 %33, i32 %36)
  %38 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %39 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %38, i32 0, i32 1
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %4, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %4, i32 0, i32 3
  %44 = load i32 (i32, %struct.octeon_mbox_cmd*, i32)*, i32 (i32, %struct.octeon_mbox_cmd*, i32)** %43, align 8
  %45 = icmp ne i32 (i32, %struct.octeon_mbox_cmd*, i32)* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %25
  %47 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %4, i32 0, i32 3
  %48 = load i32 (i32, %struct.octeon_mbox_cmd*, i32)*, i32 (i32, %struct.octeon_mbox_cmd*, i32)** %47, align 8
  %49 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %50 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %4, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 %48(i32 %51, %struct.octeon_mbox_cmd* %4, i32 %53)
  br label %55

55:                                               ; preds = %46, %25
  store i32 0, i32* %2, align 4
  br label %161

56:                                               ; preds = %16
  %57 = load i8*, i8** @OCTEON_MBOX_STATE_IDLE, align 8
  %58 = ptrtoint i8* %57 to i32
  %59 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %60 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @OCTEON_PFVFSIG, align 4
  %62 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %63 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @writeq(i32 %61, i32 %64)
  %66 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %67 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %66, i32 0, i32 1
  %68 = load i64, i64* %5, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  store i32 0, i32* %2, align 4
  br label %161

70:                                               ; preds = %1
  %71 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %72 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @OCTEON_MBOX_STATE_RESPONSE_RECEIVED, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %108

77:                                               ; preds = %70
  %78 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %79 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %78, i32 0, i32 5
  %80 = call i32 @memcpy(%struct.octeon_mbox_cmd* %4, i32* %79, i32 24)
  %81 = load i8*, i8** @OCTEON_MBOX_STATE_IDLE, align 8
  %82 = ptrtoint i8* %81 to i32
  %83 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %84 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @OCTEON_PFVFSIG, align 4
  %86 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %87 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @writeq(i32 %85, i32 %88)
  %90 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %91 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %90, i32 0, i32 1
  %92 = load i64, i64* %5, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  %94 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %4, i32 0, i32 0
  store i32 0, i32* %94, align 8
  %95 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %4, i32 0, i32 3
  %96 = load i32 (i32, %struct.octeon_mbox_cmd*, i32)*, i32 (i32, %struct.octeon_mbox_cmd*, i32)** %95, align 8
  %97 = icmp ne i32 (i32, %struct.octeon_mbox_cmd*, i32)* %96, null
  br i1 %97, label %98, label %107

98:                                               ; preds = %77
  %99 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %4, i32 0, i32 3
  %100 = load i32 (i32, %struct.octeon_mbox_cmd*, i32)*, i32 (i32, %struct.octeon_mbox_cmd*, i32)** %99, align 8
  %101 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %102 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %4, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 %100(i32 %103, %struct.octeon_mbox_cmd* %4, i32 %105)
  br label %107

107:                                              ; preds = %98, %77
  store i32 0, i32* %2, align 4
  br label %161

108:                                              ; preds = %70
  %109 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %110 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @OCTEON_MBOX_STATE_REQUEST_RECEIVED, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %155

115:                                              ; preds = %108
  %116 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %117 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %116, i32 0, i32 3
  %118 = call i32 @memcpy(%struct.octeon_mbox_cmd* %4, i32* %117, i32 24)
  %119 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %4, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %148, label %124

124:                                              ; preds = %115
  %125 = load i32, i32* @OCTEON_MBOX_STATE_REQUEST_RECEIVED, align 4
  %126 = xor i32 %125, -1
  %127 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %128 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, %126
  store i32 %130, i32* %128, align 4
  %131 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %132 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @OCTEON_MBOX_STATE_RESPONSE_PENDING, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %124
  %138 = load i8*, i8** @OCTEON_MBOX_STATE_IDLE, align 8
  %139 = ptrtoint i8* %138 to i32
  %140 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %141 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 4
  br label %142

142:                                              ; preds = %137, %124
  %143 = load i32, i32* @OCTEON_PFVFSIG, align 4
  %144 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %145 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @writeq(i32 %143, i32 %146)
  br label %148

148:                                              ; preds = %142, %115
  %149 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %150 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %149, i32 0, i32 1
  %151 = load i64, i64* %5, align 8
  %152 = call i32 @spin_unlock_irqrestore(i32* %150, i64 %151)
  %153 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %154 = call i32 @octeon_mbox_process_cmd(%struct.octeon_mbox* %153, %struct.octeon_mbox_cmd* %4)
  store i32 0, i32* %2, align 4
  br label %161

155:                                              ; preds = %108
  %156 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %157 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %156, i32 0, i32 1
  %158 = load i64, i64* %5, align 8
  %159 = call i32 @spin_unlock_irqrestore(i32* %157, i64 %158)
  %160 = call i32 @WARN_ON(i32 1)
  store i32 0, i32* %2, align 4
  br label %161

161:                                              ; preds = %155, %148, %107, %56, %55
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(%struct.octeon_mbox_cmd*, i32*, i32) #1

declare dso_local i32 @writeq(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @octeon_mbox_process_cmd(%struct.octeon_mbox*, %struct.octeon_mbox_cmd*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
