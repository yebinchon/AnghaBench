; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_bpf-lirc.c_lirc_mode2_is_valid_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_bpf-lirc.c_lirc_mode2_is_valid_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { i32 }
%struct.bpf_insn_access_aux = type { i32 }

@BPF_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.bpf_prog*, %struct.bpf_insn_access_aux*)* @lirc_mode2_is_valid_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lirc_mode2_is_valid_access(i32 %0, i32 %1, i32 %2, %struct.bpf_prog* %3, %struct.bpf_insn_access_aux* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bpf_prog*, align 8
  %10 = alloca %struct.bpf_insn_access_aux*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.bpf_prog* %3, %struct.bpf_prog** %9, align 8
  store %struct.bpf_insn_access_aux* %4, %struct.bpf_insn_access_aux** %10, align 8
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @BPF_READ, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %5
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp eq i64 %19, 4
  br label %21

21:                                               ; preds = %17, %14, %5
  %22 = phi i1 [ false, %14 ], [ false, %5 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
