; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_debugfs.c_ddcb_info_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_debugfs.c_ddcb_info_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.genwqe_dev* }
%struct.genwqe_dev = type { i32, %struct.ddcb_queue }
%struct.ddcb_queue = type { i64, %struct.ddcb*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.ddcb = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"DDCB QUEUE:\0A\00", align 1
@.str.1 = private unnamed_addr constant [250 x i8] c"  ddcb_max:            %d\0A  ddcb_daddr:          %016llx - %016llx\0A  ddcb_vaddr:          %p\0A  ddcbs_in_flight:     %u\0A  ddcbs_max_in_flight: %u\0A  ddcbs_completed:     %u\0A  return_on_busy:      %u\0A  wait_on_busy:        %u\0A  irqs_processed:      %u\0A\00", align 1
@DDCB_LENGTH = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [313 x i8] c"  0x%08x 0x%016llx IO_QUEUE_CONFIG\0A  0x%08x 0x%016llx IO_QUEUE_STATUS\0A  0x%08x 0x%016llx IO_QUEUE_SEGMENT\0A  0x%08x 0x%016llx IO_QUEUE_INITSQN\0A  0x%08x 0x%016llx IO_QUEUE_WRAP\0A  0x%08x 0x%016llx IO_QUEUE_OFFSET\0A  0x%08x 0x%016llx IO_QUEUE_WTIME\0A  0x%08x 0x%016llx IO_QUEUE_ERRCNTS\0A  0x%08x 0x%016llx IO_QUEUE_LRW\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"DDCB list (ddcb_act=%d/ddcb_next=%d):\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"  %-3d: RETC=%03x SEQ=%04x HSI/SHI=%02x/%02x \00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"PRIV=%06llx CMD=%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @ddcb_info_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddcb_info_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.genwqe_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ddcb_queue*, align 8
  %8 = alloca %struct.ddcb*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.genwqe_dev*, %struct.genwqe_dev** %10, align 8
  store %struct.genwqe_dev* %11, %struct.genwqe_dev** %5, align 8
  %12 = load %struct.genwqe_dev*, %struct.genwqe_dev** %5, align 8
  %13 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %12, i32 0, i32 1
  store %struct.ddcb_queue* %13, %struct.ddcb_queue** %7, align 8
  %14 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %15 = call i32 @seq_puts(%struct.seq_file* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %17 = load %struct.ddcb_queue*, %struct.ddcb_queue** %7, align 8
  %18 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ddcb_queue*, %struct.ddcb_queue** %7, align 8
  %21 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %20, i32 0, i32 18
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ddcb_queue*, %struct.ddcb_queue** %7, align 8
  %24 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %23, i32 0, i32 18
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ddcb_queue*, %struct.ddcb_queue** %7, align 8
  %27 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DDCB_LENGTH, align 8
  %30 = mul nsw i64 %28, %29
  %31 = add nsw i64 %25, %30
  %32 = load %struct.ddcb_queue*, %struct.ddcb_queue** %7, align 8
  %33 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %32, i32 0, i32 1
  %34 = load %struct.ddcb*, %struct.ddcb** %33, align 8
  %35 = load %struct.ddcb_queue*, %struct.ddcb_queue** %7, align 8
  %36 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %35, i32 0, i32 17
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ddcb_queue*, %struct.ddcb_queue** %7, align 8
  %39 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %38, i32 0, i32 16
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ddcb_queue*, %struct.ddcb_queue** %7, align 8
  %42 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %41, i32 0, i32 15
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ddcb_queue*, %struct.ddcb_queue** %7, align 8
  %45 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %44, i32 0, i32 14
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ddcb_queue*, %struct.ddcb_queue** %7, align 8
  %48 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %47, i32 0, i32 13
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.genwqe_dev*, %struct.genwqe_dev** %5, align 8
  %51 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (%struct.seq_file*, i8*, i64, i64, ...) @seq_printf(%struct.seq_file* %16, i8* getelementptr inbounds ([250 x i8], [250 x i8]* @.str.1, i64 0, i64 0), i64 %19, i64 %22, i64 %31, %struct.ddcb* %34, i32 %37, i32 %40, i32 %43, i32 %46, i32 %49, i32 %52)
  %54 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %55 = load %struct.ddcb_queue*, %struct.ddcb_queue** %7, align 8
  %56 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %55, i32 0, i32 12
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = load %struct.genwqe_dev*, %struct.genwqe_dev** %5, align 8
  %60 = load %struct.ddcb_queue*, %struct.ddcb_queue** %7, align 8
  %61 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %60, i32 0, i32 12
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @__genwqe_readq(%struct.genwqe_dev* %59, i32 %62)
  %64 = sext i32 %63 to i64
  %65 = load %struct.ddcb_queue*, %struct.ddcb_queue** %7, align 8
  %66 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %65, i32 0, i32 11
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.genwqe_dev*, %struct.genwqe_dev** %5, align 8
  %69 = load %struct.ddcb_queue*, %struct.ddcb_queue** %7, align 8
  %70 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %69, i32 0, i32 11
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @__genwqe_readq(%struct.genwqe_dev* %68, i32 %71)
  %73 = load %struct.ddcb_queue*, %struct.ddcb_queue** %7, align 8
  %74 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %73, i32 0, i32 10
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.genwqe_dev*, %struct.genwqe_dev** %5, align 8
  %77 = load %struct.ddcb_queue*, %struct.ddcb_queue** %7, align 8
  %78 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %77, i32 0, i32 10
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @__genwqe_readq(%struct.genwqe_dev* %76, i32 %79)
  %81 = load %struct.ddcb_queue*, %struct.ddcb_queue** %7, align 8
  %82 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %81, i32 0, i32 9
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.genwqe_dev*, %struct.genwqe_dev** %5, align 8
  %85 = load %struct.ddcb_queue*, %struct.ddcb_queue** %7, align 8
  %86 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %85, i32 0, i32 9
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @__genwqe_readq(%struct.genwqe_dev* %84, i32 %87)
  %89 = load %struct.ddcb_queue*, %struct.ddcb_queue** %7, align 8
  %90 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.genwqe_dev*, %struct.genwqe_dev** %5, align 8
  %93 = load %struct.ddcb_queue*, %struct.ddcb_queue** %7, align 8
  %94 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %93, i32 0, i32 8
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @__genwqe_readq(%struct.genwqe_dev* %92, i32 %95)
  %97 = load %struct.ddcb_queue*, %struct.ddcb_queue** %7, align 8
  %98 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.genwqe_dev*, %struct.genwqe_dev** %5, align 8
  %101 = load %struct.ddcb_queue*, %struct.ddcb_queue** %7, align 8
  %102 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %101, i32 0, i32 7
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @__genwqe_readq(%struct.genwqe_dev* %100, i32 %103)
  %105 = load %struct.ddcb_queue*, %struct.ddcb_queue** %7, align 8
  %106 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.genwqe_dev*, %struct.genwqe_dev** %5, align 8
  %109 = load %struct.ddcb_queue*, %struct.ddcb_queue** %7, align 8
  %110 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @__genwqe_readq(%struct.genwqe_dev* %108, i32 %111)
  %113 = load %struct.ddcb_queue*, %struct.ddcb_queue** %7, align 8
  %114 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.genwqe_dev*, %struct.genwqe_dev** %5, align 8
  %117 = load %struct.ddcb_queue*, %struct.ddcb_queue** %7, align 8
  %118 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @__genwqe_readq(%struct.genwqe_dev* %116, i32 %119)
  %121 = load %struct.ddcb_queue*, %struct.ddcb_queue** %7, align 8
  %122 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.genwqe_dev*, %struct.genwqe_dev** %5, align 8
  %125 = load %struct.ddcb_queue*, %struct.ddcb_queue** %7, align 8
  %126 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @__genwqe_readq(%struct.genwqe_dev* %124, i32 %127)
  %129 = call i32 (%struct.seq_file*, i8*, i64, i64, ...) @seq_printf(%struct.seq_file* %54, i8* getelementptr inbounds ([313 x i8], [313 x i8]* @.str.2, i64 0, i64 0), i64 %58, i64 %64, i32 %67, i32 %72, i32 %75, i32 %80, i32 %83, i32 %88, i32 %91, i32 %96, i32 %99, i32 %104, i32 %107, i32 %112, i32 %115, i32 %120, i32 %123, i32 %128)
  %130 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %131 = load %struct.ddcb_queue*, %struct.ddcb_queue** %7, align 8
  %132 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = load %struct.ddcb_queue*, %struct.ddcb_queue** %7, align 8
  %136 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = call i32 (%struct.seq_file*, i8*, i64, i64, ...) @seq_printf(%struct.seq_file* %130, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %134, i64 %138)
  %140 = load %struct.ddcb_queue*, %struct.ddcb_queue** %7, align 8
  %141 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %140, i32 0, i32 1
  %142 = load %struct.ddcb*, %struct.ddcb** %141, align 8
  store %struct.ddcb* %142, %struct.ddcb** %8, align 8
  store i32 0, i32* %6, align 4
  br label %143

143:                                              ; preds = %183, %2
  %144 = load i32, i32* %6, align 4
  %145 = zext i32 %144 to i64
  %146 = load %struct.ddcb_queue*, %struct.ddcb_queue** %7, align 8
  %147 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp slt i64 %145, %148
  br i1 %149, label %150, label %186

150:                                              ; preds = %143
  %151 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %152 = load i32, i32* %6, align 4
  %153 = zext i32 %152 to i64
  %154 = load %struct.ddcb*, %struct.ddcb** %8, align 8
  %155 = getelementptr inbounds %struct.ddcb, %struct.ddcb* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @be16_to_cpu(i32 %156)
  %158 = sext i32 %157 to i64
  %159 = load %struct.ddcb*, %struct.ddcb** %8, align 8
  %160 = getelementptr inbounds %struct.ddcb, %struct.ddcb* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @be16_to_cpu(i32 %161)
  %163 = load %struct.ddcb*, %struct.ddcb** %8, align 8
  %164 = getelementptr inbounds %struct.ddcb, %struct.ddcb* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.ddcb*, %struct.ddcb** %8, align 8
  %167 = getelementptr inbounds %struct.ddcb, %struct.ddcb* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = call i32 (%struct.seq_file*, i8*, i64, i64, ...) @seq_printf(%struct.seq_file* %151, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i64 %153, i64 %158, i32 %162, i32 %165, i32 %168)
  %170 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %171 = load %struct.ddcb*, %struct.ddcb** %8, align 8
  %172 = getelementptr inbounds %struct.ddcb, %struct.ddcb* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @be64_to_cpu(i32 %173)
  %175 = sext i32 %174 to i64
  %176 = load %struct.ddcb*, %struct.ddcb** %8, align 8
  %177 = getelementptr inbounds %struct.ddcb, %struct.ddcb* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = sext i32 %178 to i64
  %180 = call i32 (%struct.seq_file*, i8*, i64, i64, ...) @seq_printf(%struct.seq_file* %170, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i64 %175, i64 %179)
  %181 = load %struct.ddcb*, %struct.ddcb** %8, align 8
  %182 = getelementptr inbounds %struct.ddcb, %struct.ddcb* %181, i32 1
  store %struct.ddcb* %182, %struct.ddcb** %8, align 8
  br label %183

183:                                              ; preds = %150
  %184 = load i32, i32* %6, align 4
  %185 = add i32 %184, 1
  store i32 %185, i32* %6, align 4
  br label %143

186:                                              ; preds = %143
  ret i32 0
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64, i64, ...) #1

declare dso_local i32 @__genwqe_readq(%struct.genwqe_dev*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
