; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-risc.c_bttv_risc_init_main.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-risc.c_bttv_risc_init_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i8** }
%struct.TYPE_3__ = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%d: risc main @ %08llx\0A\00", align 1
@BT848_RISC_SYNC = common dso_local global i32 0, align 4
@BT848_RISC_RESYNC = common dso_local global i32 0, align 4
@BT848_FIFO_STATUS_VRE = common dso_local global i32 0, align 4
@BT848_RISC_JUMP = common dso_local global i32 0, align 4
@BT848_FIFO_STATUS_VRO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bttv_risc_init_main(%struct.bttv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bttv*, align 8
  %4 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %3, align 8
  %5 = load %struct.bttv*, %struct.bttv** %3, align 8
  %6 = getelementptr inbounds %struct.bttv, %struct.bttv* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.bttv*, %struct.bttv** %3, align 8
  %10 = getelementptr inbounds %struct.bttv, %struct.bttv* %9, i32 0, i32 0
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = call i32 @btcx_riscmem_alloc(i32 %8, %struct.TYPE_4__* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %169

16:                                               ; preds = %1
  %17 = load %struct.bttv*, %struct.bttv** %3, align 8
  %18 = getelementptr inbounds %struct.bttv, %struct.bttv* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.bttv*, %struct.bttv** %3, align 8
  %22 = getelementptr inbounds %struct.bttv, %struct.bttv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %20, i64 %25)
  %27 = load i32, i32* @BT848_RISC_SYNC, align 4
  %28 = load i32, i32* @BT848_RISC_RESYNC, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @BT848_FIFO_STATUS_VRE, align 4
  %31 = or i32 %29, %30
  %32 = call i8* @cpu_to_le32(i32 %31)
  %33 = load %struct.bttv*, %struct.bttv** %3, align 8
  %34 = getelementptr inbounds %struct.bttv, %struct.bttv* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i8**, i8*** %35, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  store i8* %32, i8** %37, align 8
  %38 = call i8* @cpu_to_le32(i32 0)
  %39 = load %struct.bttv*, %struct.bttv** %3, align 8
  %40 = getelementptr inbounds %struct.bttv, %struct.bttv* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i8**, i8*** %41, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 1
  store i8* %38, i8** %43, align 8
  %44 = load i32, i32* @BT848_RISC_JUMP, align 4
  %45 = call i8* @cpu_to_le32(i32 %44)
  %46 = load %struct.bttv*, %struct.bttv** %3, align 8
  %47 = getelementptr inbounds %struct.bttv, %struct.bttv* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i8**, i8*** %48, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 2
  store i8* %45, i8** %50, align 8
  %51 = load %struct.bttv*, %struct.bttv** %3, align 8
  %52 = getelementptr inbounds %struct.bttv, %struct.bttv* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 16
  %56 = call i8* @cpu_to_le32(i32 %55)
  %57 = load %struct.bttv*, %struct.bttv** %3, align 8
  %58 = getelementptr inbounds %struct.bttv, %struct.bttv* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i8**, i8*** %59, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 3
  store i8* %56, i8** %61, align 8
  %62 = load i32, i32* @BT848_RISC_JUMP, align 4
  %63 = call i8* @cpu_to_le32(i32 %62)
  %64 = load %struct.bttv*, %struct.bttv** %3, align 8
  %65 = getelementptr inbounds %struct.bttv, %struct.bttv* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i8**, i8*** %66, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 4
  store i8* %63, i8** %68, align 8
  %69 = load %struct.bttv*, %struct.bttv** %3, align 8
  %70 = getelementptr inbounds %struct.bttv, %struct.bttv* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 24
  %74 = call i8* @cpu_to_le32(i32 %73)
  %75 = load %struct.bttv*, %struct.bttv** %3, align 8
  %76 = getelementptr inbounds %struct.bttv, %struct.bttv* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i8**, i8*** %77, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 5
  store i8* %74, i8** %79, align 8
  %80 = load i32, i32* @BT848_RISC_JUMP, align 4
  %81 = call i8* @cpu_to_le32(i32 %80)
  %82 = load %struct.bttv*, %struct.bttv** %3, align 8
  %83 = getelementptr inbounds %struct.bttv, %struct.bttv* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i8**, i8*** %84, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 6
  store i8* %81, i8** %86, align 8
  %87 = load %struct.bttv*, %struct.bttv** %3, align 8
  %88 = getelementptr inbounds %struct.bttv, %struct.bttv* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 32
  %92 = call i8* @cpu_to_le32(i32 %91)
  %93 = load %struct.bttv*, %struct.bttv** %3, align 8
  %94 = getelementptr inbounds %struct.bttv, %struct.bttv* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i8**, i8*** %95, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 7
  store i8* %92, i8** %97, align 8
  %98 = load i32, i32* @BT848_RISC_SYNC, align 4
  %99 = load i32, i32* @BT848_RISC_RESYNC, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @BT848_FIFO_STATUS_VRO, align 4
  %102 = or i32 %100, %101
  %103 = call i8* @cpu_to_le32(i32 %102)
  %104 = load %struct.bttv*, %struct.bttv** %3, align 8
  %105 = getelementptr inbounds %struct.bttv, %struct.bttv* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i8**, i8*** %106, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 8
  store i8* %103, i8** %108, align 8
  %109 = call i8* @cpu_to_le32(i32 0)
  %110 = load %struct.bttv*, %struct.bttv** %3, align 8
  %111 = getelementptr inbounds %struct.bttv, %struct.bttv* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i8**, i8*** %112, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i64 9
  store i8* %109, i8** %114, align 8
  %115 = load i32, i32* @BT848_RISC_JUMP, align 4
  %116 = call i8* @cpu_to_le32(i32 %115)
  %117 = load %struct.bttv*, %struct.bttv** %3, align 8
  %118 = getelementptr inbounds %struct.bttv, %struct.bttv* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i8**, i8*** %119, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 10
  store i8* %116, i8** %121, align 8
  %122 = load %struct.bttv*, %struct.bttv** %3, align 8
  %123 = getelementptr inbounds %struct.bttv, %struct.bttv* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, 48
  %127 = call i8* @cpu_to_le32(i32 %126)
  %128 = load %struct.bttv*, %struct.bttv** %3, align 8
  %129 = getelementptr inbounds %struct.bttv, %struct.bttv* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load i8**, i8*** %130, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i64 11
  store i8* %127, i8** %132, align 8
  %133 = load i32, i32* @BT848_RISC_JUMP, align 4
  %134 = call i8* @cpu_to_le32(i32 %133)
  %135 = load %struct.bttv*, %struct.bttv** %3, align 8
  %136 = getelementptr inbounds %struct.bttv, %struct.bttv* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i8**, i8*** %137, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i64 12
  store i8* %134, i8** %139, align 8
  %140 = load %struct.bttv*, %struct.bttv** %3, align 8
  %141 = getelementptr inbounds %struct.bttv, %struct.bttv* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, 56
  %145 = call i8* @cpu_to_le32(i32 %144)
  %146 = load %struct.bttv*, %struct.bttv** %3, align 8
  %147 = getelementptr inbounds %struct.bttv, %struct.bttv* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i8**, i8*** %148, align 8
  %150 = getelementptr inbounds i8*, i8** %149, i64 13
  store i8* %145, i8** %150, align 8
  %151 = load i32, i32* @BT848_RISC_JUMP, align 4
  %152 = call i8* @cpu_to_le32(i32 %151)
  %153 = load %struct.bttv*, %struct.bttv** %3, align 8
  %154 = getelementptr inbounds %struct.bttv, %struct.bttv* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  %156 = load i8**, i8*** %155, align 8
  %157 = getelementptr inbounds i8*, i8** %156, i64 14
  store i8* %152, i8** %157, align 8
  %158 = load %struct.bttv*, %struct.bttv** %3, align 8
  %159 = getelementptr inbounds %struct.bttv, %struct.bttv* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = add nsw i32 %161, 0
  %163 = call i8* @cpu_to_le32(i32 %162)
  %164 = load %struct.bttv*, %struct.bttv** %3, align 8
  %165 = getelementptr inbounds %struct.bttv, %struct.bttv* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 1
  %167 = load i8**, i8*** %166, align 8
  %168 = getelementptr inbounds i8*, i8** %167, i64 15
  store i8* %163, i8** %168, align 8
  store i32 0, i32* %2, align 4
  br label %169

169:                                              ; preds = %16, %14
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local i32 @btcx_riscmem_alloc(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i64) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
