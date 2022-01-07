; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_rss_vf_config_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_rss_vf_config_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.rss_vf_conf = type { i32, i32 }

@SEQ_START_TOKEN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [48 x i8] c"     RSS                     Hash Tuple Enable\0A\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"     Enable   IVF  Dis  Enb  IPv6      IPv4      UDP    Def  Secret Key\0A\00", align 1
@.str.2 = private unnamed_addr constant [77 x i8] c" VF  Chn Prt  Map  VLAN  uP  Four Two  Four Two  Four   Que  Idx       Hash\0A\00", align 1
@.str.3 = private unnamed_addr constant [72 x i8] c"%3d  %3s %3s  %3d   %3s %3s   %3s %3s   %3s  %3s   %3s  %4d  %3d %#10x\0A\00", align 1
@VFCHNEN_F = common dso_local global i32 0, align 4
@VFPRTEN_F = common dso_local global i32 0, align 4
@VFVLNEX_F = common dso_local global i32 0, align 4
@VFUPEN_F = common dso_local global i32 0, align 4
@VFIP4FOURTUPEN_F = common dso_local global i32 0, align 4
@VFIP6TWOTUPEN_F = common dso_local global i32 0, align 4
@VFIP4TWOTUPEN_F = common dso_local global i32 0, align 4
@ENABLEUDPHASH_F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*, i32)* @rss_vf_config_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rss_vf_config_show(%struct.seq_file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rss_vf_conf*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = load i8*, i8** @SEQ_START_TOKEN, align 8
  %10 = icmp eq i8* %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %13 = call i32 @seq_puts(%struct.seq_file* %12, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %15 = call i32 @seq_puts(%struct.seq_file* %14, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %17 = call i32 @seq_puts(%struct.seq_file* %16, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0))
  br label %93

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %struct.rss_vf_conf*
  store %struct.rss_vf_conf* %20, %struct.rss_vf_conf** %7, align 8
  %21 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.rss_vf_conf*, %struct.rss_vf_conf** %7, align 8
  %24 = getelementptr inbounds %struct.rss_vf_conf, %struct.rss_vf_conf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @VFCHNEN_F, align 4
  %27 = and i32 %25, %26
  %28 = call i32 @yesno(i32 %27)
  %29 = load %struct.rss_vf_conf*, %struct.rss_vf_conf** %7, align 8
  %30 = getelementptr inbounds %struct.rss_vf_conf, %struct.rss_vf_conf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @VFPRTEN_F, align 4
  %33 = and i32 %31, %32
  %34 = call i32 @yesno(i32 %33)
  %35 = load %struct.rss_vf_conf*, %struct.rss_vf_conf** %7, align 8
  %36 = getelementptr inbounds %struct.rss_vf_conf, %struct.rss_vf_conf* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @VFLKPIDX_G(i32 %37)
  %39 = load %struct.rss_vf_conf*, %struct.rss_vf_conf** %7, align 8
  %40 = getelementptr inbounds %struct.rss_vf_conf, %struct.rss_vf_conf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @VFVLNEX_F, align 4
  %43 = and i32 %41, %42
  %44 = call i32 @yesno(i32 %43)
  %45 = load %struct.rss_vf_conf*, %struct.rss_vf_conf** %7, align 8
  %46 = getelementptr inbounds %struct.rss_vf_conf, %struct.rss_vf_conf* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @VFUPEN_F, align 4
  %49 = and i32 %47, %48
  %50 = call i32 @yesno(i32 %49)
  %51 = load %struct.rss_vf_conf*, %struct.rss_vf_conf** %7, align 8
  %52 = getelementptr inbounds %struct.rss_vf_conf, %struct.rss_vf_conf* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @VFIP4FOURTUPEN_F, align 4
  %55 = and i32 %53, %54
  %56 = call i32 @yesno(i32 %55)
  %57 = load %struct.rss_vf_conf*, %struct.rss_vf_conf** %7, align 8
  %58 = getelementptr inbounds %struct.rss_vf_conf, %struct.rss_vf_conf* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @VFIP6TWOTUPEN_F, align 4
  %61 = and i32 %59, %60
  %62 = call i32 @yesno(i32 %61)
  %63 = load %struct.rss_vf_conf*, %struct.rss_vf_conf** %7, align 8
  %64 = getelementptr inbounds %struct.rss_vf_conf, %struct.rss_vf_conf* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @VFIP4FOURTUPEN_F, align 4
  %67 = and i32 %65, %66
  %68 = call i32 @yesno(i32 %67)
  %69 = load %struct.rss_vf_conf*, %struct.rss_vf_conf** %7, align 8
  %70 = getelementptr inbounds %struct.rss_vf_conf, %struct.rss_vf_conf* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @VFIP4TWOTUPEN_F, align 4
  %73 = and i32 %71, %72
  %74 = call i32 @yesno(i32 %73)
  %75 = load %struct.rss_vf_conf*, %struct.rss_vf_conf** %7, align 8
  %76 = getelementptr inbounds %struct.rss_vf_conf, %struct.rss_vf_conf* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ENABLEUDPHASH_F, align 4
  %79 = and i32 %77, %78
  %80 = call i32 @yesno(i32 %79)
  %81 = load %struct.rss_vf_conf*, %struct.rss_vf_conf** %7, align 8
  %82 = getelementptr inbounds %struct.rss_vf_conf, %struct.rss_vf_conf* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @DEFAULTQUEUE_G(i32 %83)
  %85 = load %struct.rss_vf_conf*, %struct.rss_vf_conf** %7, align 8
  %86 = getelementptr inbounds %struct.rss_vf_conf, %struct.rss_vf_conf* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @KEYINDEX_G(i32 %87)
  %89 = load %struct.rss_vf_conf*, %struct.rss_vf_conf** %7, align 8
  %90 = getelementptr inbounds %struct.rss_vf_conf, %struct.rss_vf_conf* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0), i32 %22, i32 %28, i32 %34, i32 %38, i32 %44, i32 %50, i32 %56, i32 %62, i32 %68, i32 %74, i32 %80, i32 %84, i32 %88, i32 %91)
  br label %93

93:                                               ; preds = %18, %11
  ret i32 0
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @yesno(i32) #1

declare dso_local i32 @VFLKPIDX_G(i32) #1

declare dso_local i32 @DEFAULTQUEUE_G(i32) #1

declare dso_local i32 @KEYINDEX_G(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
