; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_verifier.c_nfp_bpf_get_stack_usage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_verifier.c_nfp_bpf_get_stack_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i16 }
%struct.nfp_insn_meta = type { i16, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64 }

@MAX_CALL_FRAMES = common dso_local global i32 0, align 4
@STACK_FRAME_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*)* @nfp_bpf_get_stack_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_bpf_get_stack_usage(%struct.nfp_prog* %0) #0 {
  %2 = alloca %struct.nfp_prog*, align 8
  %3 = alloca %struct.nfp_insn_meta*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i16, align 2
  store %struct.nfp_prog* %0, %struct.nfp_prog** %2, align 8
  %12 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %13 = call %struct.nfp_insn_meta* @nfp_prog_first_meta(%struct.nfp_prog* %12)
  store %struct.nfp_insn_meta* %13, %struct.nfp_insn_meta** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %14 = load i32, i32* @MAX_CALL_FRAMES, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca %struct.nfp_insn_meta*, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load i32, i32* @MAX_CALL_FRAMES, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i16, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %21 = load i32, i32* @MAX_CALL_FRAMES, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i16, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  %24 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %3, align 8
  %25 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %24, i32 0, i32 0
  %26 = load i16, i16* %25, align 8
  store i16 %26, i16* %11, align 2
  br label %27

27:                                               ; preds = %79, %1
  %28 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %29 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i16, i16* %11, align 2
  %32 = zext i16 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i16, i16* %34, align 2
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i16, i16* %20, i64 %37
  store i16 %35, i16* %38, align 2
  %39 = load i32, i32* %6, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i16, i16* %20, i64 %40
  %42 = load i16, i16* %41, align 2
  %43 = load i32, i32* @STACK_FRAME_ALIGN, align 4
  %44 = call zeroext i16 @round_up(i16 zeroext %42, i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i16, i16* %20, i64 %46
  store i16 %44, i16* %47, align 2
  %48 = load i32, i32* %6, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i16, i16* %20, i64 %49
  %51 = load i16, i16* %50, align 2
  %52 = zext i16 %51 to i32
  %53 = load i32, i32* %5, align 4
  %54 = add i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @max(i32 %55, i32 %56)
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %115, %27
  br label %59

59:                                               ; preds = %106, %58
  %60 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %3, align 8
  %61 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %62 = call %struct.nfp_insn_meta* @nfp_prog_last_meta(%struct.nfp_prog* %61)
  %63 = icmp ne %struct.nfp_insn_meta* %60, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %3, align 8
  %66 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %65, i32 0, i32 0
  %67 = load i16, i16* %66, align 8
  %68 = zext i16 %67 to i32
  %69 = load i16, i16* %11, align 2
  %70 = zext i16 %69 to i32
  %71 = icmp eq i32 %68, %70
  br label %72

72:                                               ; preds = %64, %59
  %73 = phi i1 [ false, %59 ], [ %71, %64 ]
  br i1 %73, label %74, label %109

74:                                               ; preds = %72
  %75 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %3, align 8
  %76 = call i32 @is_mbpf_pseudo_call(%struct.nfp_insn_meta* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  br label %106

79:                                               ; preds = %74
  %80 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %3, align 8
  %81 = call %struct.nfp_insn_meta* @nfp_meta_next(%struct.nfp_insn_meta* %80)
  %82 = load i32, i32* %6, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %17, i64 %83
  store %struct.nfp_insn_meta* %81, %struct.nfp_insn_meta** %84, align 8
  %85 = load i16, i16* %11, align 2
  %86 = load i32, i32* %6, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i16, i16* %23, i64 %87
  store i16 %85, i16* %88, align 2
  %89 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %90 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %3, align 8
  %91 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %3, align 8
  %92 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, 1
  %95 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %3, align 8
  %96 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %94, %98
  %100 = call %struct.nfp_insn_meta* @nfp_bpf_goto_meta(%struct.nfp_prog* %89, %struct.nfp_insn_meta* %90, i64 %99)
  store %struct.nfp_insn_meta* %100, %struct.nfp_insn_meta** %3, align 8
  %101 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %3, align 8
  %102 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %101, i32 0, i32 0
  %103 = load i16, i16* %102, align 8
  store i16 %103, i16* %11, align 2
  %104 = load i32, i32* %6, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %27

106:                                              ; preds = %78
  %107 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %3, align 8
  %108 = call %struct.nfp_insn_meta* @nfp_meta_next(%struct.nfp_insn_meta* %107)
  store %struct.nfp_insn_meta* %108, %struct.nfp_insn_meta** %3, align 8
  br label %59

109:                                              ; preds = %72
  %110 = load i32, i32* %6, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32, i32* %4, align 4
  %114 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %114)
  ret i32 %113

115:                                              ; preds = %109
  %116 = load i32, i32* %6, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i16, i16* %20, i64 %117
  %119 = load i16, i16* %118, align 2
  %120 = zext i16 %119 to i32
  %121 = load i32, i32* %5, align 4
  %122 = sub i32 %121, %120
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* %6, align 4
  %124 = add i32 %123, -1
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %17, i64 %126
  %128 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %127, align 8
  store %struct.nfp_insn_meta* %128, %struct.nfp_insn_meta** %3, align 8
  %129 = load i32, i32* %6, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i16, i16* %23, i64 %130
  %132 = load i16, i16* %131, align 2
  store i16 %132, i16* %11, align 2
  br label %58
}

declare dso_local %struct.nfp_insn_meta* @nfp_prog_first_meta(%struct.nfp_prog*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local zeroext i16 @round_up(i16 zeroext, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local %struct.nfp_insn_meta* @nfp_prog_last_meta(%struct.nfp_prog*) #1

declare dso_local i32 @is_mbpf_pseudo_call(%struct.nfp_insn_meta*) #1

declare dso_local %struct.nfp_insn_meta* @nfp_meta_next(%struct.nfp_insn_meta*) #1

declare dso_local %struct.nfp_insn_meta* @nfp_bpf_goto_meta(%struct.nfp_prog*, %struct.nfp_insn_meta*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
