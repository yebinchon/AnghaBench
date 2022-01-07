; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c___command_read_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c___command_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vub300_mmc_host = type { i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_6__, i32, i32, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.mmc_command = type { i32 }
%struct.mmc_data = type { i32, i32, i32 }

@pad_input_to_usb_pkt = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@EREMOTEIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vub300_mmc_host*, %struct.mmc_command*, %struct.mmc_data*)* @__command_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__command_read_data(%struct.vub300_mmc_host* %0, %struct.mmc_command* %1, %struct.mmc_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vub300_mmc_host*, align 8
  %6 = alloca %struct.mmc_command*, align 8
  %7 = alloca %struct.mmc_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.vub300_mmc_host* %0, %struct.vub300_mmc_host** %5, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %6, align 8
  store %struct.mmc_data* %2, %struct.mmc_data** %7, align 8
  %16 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %17 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %20 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %19, i32 0, i32 7
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 511, %24
  %26 = ashr i32 %25, 9
  %27 = shl i32 %26, 9
  br label %33

28:                                               ; preds = %3
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 63, %29
  %31 = ashr i32 %30, 6
  %32 = shl i32 %31, 6
  br label %33

33:                                               ; preds = %28, %23
  %34 = phi i32 [ %27, %23 ], [ %32, %28 ]
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @pad_input_to_usb_pkt, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %120, label %41

41:                                               ; preds = %38, %33
  %42 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %43 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %46 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @usb_rcvbulkpipe(i32 %44, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %50 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %49, i32 0, i32 3
  %51 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %52 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %56 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %59 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i32 @usb_sg_init(%struct.TYPE_5__* %50, i32 %53, i32 %54, i32 0, i32 %57, i32 %60, i32 0, i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %41
  %66 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %67 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @usb_unlink_urb(i32 %68)
  %70 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %71 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @usb_unlink_urb(i32 %72)
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %76 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %78 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %77, i32 0, i32 0
  store i32 0, i32* %78, align 4
  store i32 0, i32* %4, align 4
  br label %190

79:                                               ; preds = %41
  %80 = load i64, i64* @jiffies, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sdiv i32 %81, 16384
  %83 = add nsw i32 2000, %82
  %84 = call i64 @msecs_to_jiffies(i32 %83)
  %85 = add nsw i64 %80, %84
  %86 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %87 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  store i64 %85, i64* %88, align 8
  %89 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %90 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %89, i32 0, i32 4
  %91 = call i32 @add_timer(%struct.TYPE_6__* %90)
  %92 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %93 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %92, i32 0, i32 3
  %94 = call i32 @usb_sg_wait(%struct.TYPE_5__* %93)
  %95 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %96 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %95, i32 0, i32 4
  %97 = call i32 @del_timer(%struct.TYPE_6__* %96)
  %98 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %99 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %79
  %104 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %105 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  %109 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %110 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  %111 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %112 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %111, i32 0, i32 0
  store i32 0, i32* %112, align 4
  store i32 0, i32* %4, align 4
  br label %190

113:                                              ; preds = %79
  %114 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %115 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %118 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %4, align 4
  br label %190

120:                                              ; preds = %38
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @GFP_KERNEL, align 4
  %123 = call i32* @kmalloc(i32 %121, i32 %122)
  store i32* %123, i32** %12, align 8
  %124 = load i32*, i32** %12, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %183

126:                                              ; preds = %120
  %127 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %128 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %131 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @usb_rcvbulkpipe(i32 %129, i32 %132)
  store i32 %133, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %134 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %135 = load i32, i32* %14, align 4
  %136 = load i32*, i32** %12, align 8
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* %9, align 4
  %139 = sdiv i32 %138, 16384
  %140 = add nsw i32 2000, %139
  %141 = call i32 @vub300_usb_bulk_msg(%struct.vub300_mmc_host* %134, i32 %135, i32* %136, i32 %137, i32* %15, i32 %140)
  store i32 %141, i32* %13, align 4
  %142 = load i32, i32* %13, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %126
  %145 = load i32, i32* %13, align 4
  %146 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %147 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 4
  %148 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %149 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %148, i32 0, i32 0
  store i32 0, i32* %149, align 4
  %150 = load i32*, i32** %12, align 8
  %151 = call i32 @kfree(i32* %150)
  store i32 0, i32* %4, align 4
  br label %190

152:                                              ; preds = %126
  %153 = load i32, i32* %15, align 4
  %154 = load i32, i32* %8, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %165

156:                                              ; preds = %152
  %157 = load i32, i32* @EREMOTEIO, align 4
  %158 = sub nsw i32 0, %157
  %159 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %160 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 4
  %161 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %162 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %161, i32 0, i32 0
  store i32 0, i32* %162, align 4
  %163 = load i32*, i32** %12, align 8
  %164 = call i32 @kfree(i32* %163)
  store i32 0, i32* %4, align 4
  br label %190

165:                                              ; preds = %152
  %166 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %167 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %170 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32*, i32** %12, align 8
  %173 = load i32, i32* %8, align 4
  %174 = call i32 @sg_copy_from_buffer(i32 %168, i32 %171, i32* %172, i32 %173)
  %175 = load i32*, i32** %12, align 8
  %176 = call i32 @kfree(i32* %175)
  %177 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %5, align 8
  %178 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %181 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 4
  %182 = load i32, i32* %8, align 4
  store i32 %182, i32* %4, align 4
  br label %190

183:                                              ; preds = %120
  %184 = load i32, i32* @ENOMEM, align 4
  %185 = sub nsw i32 0, %184
  %186 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %187 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %186, i32 0, i32 0
  store i32 %185, i32* %187, align 4
  %188 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %189 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %188, i32 0, i32 0
  store i32 0, i32* %189, align 4
  store i32 0, i32* %4, align 4
  br label %190

190:                                              ; preds = %183, %165, %156, %144, %113, %103, %65
  %191 = load i32, i32* %4, align 4
  ret i32 %191
}

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_sg_init(%struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @usb_unlink_urb(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @usb_sg_wait(%struct.TYPE_5__*) #1

declare dso_local i32 @del_timer(%struct.TYPE_6__*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @vub300_usb_bulk_msg(%struct.vub300_mmc_host*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @sg_copy_from_buffer(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
