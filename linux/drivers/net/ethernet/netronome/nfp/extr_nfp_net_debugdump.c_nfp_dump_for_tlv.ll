; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_debugdump.c_nfp_dump_for_tlv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_debugdump.c_nfp_dump_for_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_pf = type { i32 }
%struct.nfp_dump_tl = type { i32 }
%struct.nfp_dumpspec_rtsym = type { i32 }
%struct.nfp_dump_state = type { i32 }
%struct.nfp_dumpspec_csr = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_pf*, %struct.nfp_dump_tl*, i8*)* @nfp_dump_for_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_dump_for_tlv(%struct.nfp_pf* %0, %struct.nfp_dump_tl* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_pf*, align 8
  %6 = alloca %struct.nfp_dump_tl*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nfp_dumpspec_rtsym*, align 8
  %9 = alloca %struct.nfp_dump_state*, align 8
  %10 = alloca %struct.nfp_dumpspec_csr*, align 8
  %11 = alloca i32, align 4
  store %struct.nfp_pf* %0, %struct.nfp_pf** %5, align 8
  store %struct.nfp_dump_tl* %1, %struct.nfp_dump_tl** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.nfp_dump_state*
  store %struct.nfp_dump_state* %13, %struct.nfp_dump_state** %9, align 8
  %14 = load %struct.nfp_dump_tl*, %struct.nfp_dump_tl** %6, align 8
  %15 = getelementptr inbounds %struct.nfp_dump_tl, %struct.nfp_dump_tl* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @be32_to_cpu(i32 %16)
  switch i32 %17, label %83 [
    i32 134, label %18
    i32 135, label %27
    i32 128, label %27
    i32 130, label %27
    i32 131, label %39
    i32 129, label %51
    i32 133, label %63
    i32 132, label %73
  ]

18:                                               ; preds = %3
  %19 = load %struct.nfp_pf*, %struct.nfp_pf** %5, align 8
  %20 = load %struct.nfp_dump_state*, %struct.nfp_dump_state** %9, align 8
  %21 = call i32 @nfp_dump_fwname(%struct.nfp_pf* %19, %struct.nfp_dump_state* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %4, align 4
  br label %95

26:                                               ; preds = %18
  br label %94

27:                                               ; preds = %3, %3, %3
  %28 = load %struct.nfp_dump_tl*, %struct.nfp_dump_tl** %6, align 8
  %29 = bitcast %struct.nfp_dump_tl* %28 to %struct.nfp_dumpspec_csr*
  store %struct.nfp_dumpspec_csr* %29, %struct.nfp_dumpspec_csr** %10, align 8
  %30 = load %struct.nfp_pf*, %struct.nfp_pf** %5, align 8
  %31 = load %struct.nfp_dumpspec_csr*, %struct.nfp_dumpspec_csr** %10, align 8
  %32 = load %struct.nfp_dump_state*, %struct.nfp_dump_state** %9, align 8
  %33 = call i32 @nfp_dump_csr_range(%struct.nfp_pf* %30, %struct.nfp_dumpspec_csr* %31, %struct.nfp_dump_state* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %4, align 4
  br label %95

38:                                               ; preds = %27
  br label %94

39:                                               ; preds = %3
  %40 = load %struct.nfp_dump_tl*, %struct.nfp_dump_tl** %6, align 8
  %41 = bitcast %struct.nfp_dump_tl* %40 to %struct.nfp_dumpspec_csr*
  store %struct.nfp_dumpspec_csr* %41, %struct.nfp_dumpspec_csr** %10, align 8
  %42 = load %struct.nfp_pf*, %struct.nfp_pf** %5, align 8
  %43 = load %struct.nfp_dumpspec_csr*, %struct.nfp_dumpspec_csr** %10, align 8
  %44 = load %struct.nfp_dump_state*, %struct.nfp_dump_state** %9, align 8
  %45 = call i32 @nfp_dump_indirect_csr_range(%struct.nfp_pf* %42, %struct.nfp_dumpspec_csr* %43, %struct.nfp_dump_state* %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %4, align 4
  br label %95

50:                                               ; preds = %39
  br label %94

51:                                               ; preds = %3
  %52 = load %struct.nfp_dump_tl*, %struct.nfp_dump_tl** %6, align 8
  %53 = bitcast %struct.nfp_dump_tl* %52 to %struct.nfp_dumpspec_rtsym*
  store %struct.nfp_dumpspec_rtsym* %53, %struct.nfp_dumpspec_rtsym** %8, align 8
  %54 = load %struct.nfp_pf*, %struct.nfp_pf** %5, align 8
  %55 = load %struct.nfp_dumpspec_rtsym*, %struct.nfp_dumpspec_rtsym** %8, align 8
  %56 = load %struct.nfp_dump_state*, %struct.nfp_dump_state** %9, align 8
  %57 = call i32 @nfp_dump_single_rtsym(%struct.nfp_pf* %54, %struct.nfp_dumpspec_rtsym* %55, %struct.nfp_dump_state* %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %4, align 4
  br label %95

62:                                               ; preds = %51
  br label %94

63:                                               ; preds = %3
  %64 = load %struct.nfp_pf*, %struct.nfp_pf** %5, align 8
  %65 = load %struct.nfp_dump_tl*, %struct.nfp_dump_tl** %6, align 8
  %66 = load %struct.nfp_dump_state*, %struct.nfp_dump_state** %9, align 8
  %67 = call i32 @nfp_dump_hwinfo(%struct.nfp_pf* %64, %struct.nfp_dump_tl* %65, %struct.nfp_dump_state* %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %4, align 4
  br label %95

72:                                               ; preds = %63
  br label %94

73:                                               ; preds = %3
  %74 = load %struct.nfp_pf*, %struct.nfp_pf** %5, align 8
  %75 = load %struct.nfp_dump_tl*, %struct.nfp_dump_tl** %6, align 8
  %76 = load %struct.nfp_dump_state*, %struct.nfp_dump_state** %9, align 8
  %77 = call i32 @nfp_dump_hwinfo_field(%struct.nfp_pf* %74, %struct.nfp_dump_tl* %75, %struct.nfp_dump_state* %76)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %4, align 4
  br label %95

82:                                               ; preds = %73
  br label %94

83:                                               ; preds = %3
  %84 = load %struct.nfp_dump_tl*, %struct.nfp_dump_tl** %6, align 8
  %85 = load i32, i32* @EOPNOTSUPP, align 4
  %86 = sub nsw i32 0, %85
  %87 = load %struct.nfp_dump_state*, %struct.nfp_dump_state** %9, align 8
  %88 = call i32 @nfp_dump_error_tlv(%struct.nfp_dump_tl* %84, i32 %86, %struct.nfp_dump_state* %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %4, align 4
  br label %95

93:                                               ; preds = %83
  br label %94

94:                                               ; preds = %93, %82, %72, %62, %50, %38, %26
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %94, %91, %80, %70, %60, %48, %36, %24
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @nfp_dump_fwname(%struct.nfp_pf*, %struct.nfp_dump_state*) #1

declare dso_local i32 @nfp_dump_csr_range(%struct.nfp_pf*, %struct.nfp_dumpspec_csr*, %struct.nfp_dump_state*) #1

declare dso_local i32 @nfp_dump_indirect_csr_range(%struct.nfp_pf*, %struct.nfp_dumpspec_csr*, %struct.nfp_dump_state*) #1

declare dso_local i32 @nfp_dump_single_rtsym(%struct.nfp_pf*, %struct.nfp_dumpspec_rtsym*, %struct.nfp_dump_state*) #1

declare dso_local i32 @nfp_dump_hwinfo(%struct.nfp_pf*, %struct.nfp_dump_tl*, %struct.nfp_dump_state*) #1

declare dso_local i32 @nfp_dump_hwinfo_field(%struct.nfp_pf*, %struct.nfp_dump_tl*, %struct.nfp_dump_state*) #1

declare dso_local i32 @nfp_dump_error_tlv(%struct.nfp_dump_tl*, i32, %struct.nfp_dump_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
