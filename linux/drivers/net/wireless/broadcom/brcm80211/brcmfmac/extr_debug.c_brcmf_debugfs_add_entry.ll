; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_debug.c_brcmf_debugfs_add_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_debug.c_brcmf_debugfs_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pub = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.seq_file = type opaque
%struct.dentry = type { i32 }
%struct.seq_file.0 = type opaque

@.str = private unnamed_addr constant [28 x i8] c"wiphy not (yet) registered\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcmf_debugfs_add_entry(%struct.brcmf_pub* %0, i8* %1, i32 (%struct.seq_file*, i8*)* %2) #0 {
  %4 = alloca %struct.brcmf_pub*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32 (%struct.seq_file*, i8*)*, align 8
  %7 = alloca %struct.dentry*, align 8
  store %struct.brcmf_pub* %0, %struct.brcmf_pub** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 (%struct.seq_file*, i8*)* %2, i32 (%struct.seq_file*, i8*)** %6, align 8
  %8 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %9 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN(i32 %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %18 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %24 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32 (%struct.seq_file*, i8*)*, i32 (%struct.seq_file*, i8*)** %6, align 8
  %29 = bitcast i32 (%struct.seq_file*, i8*)* %28 to i32 (%struct.seq_file.0*, i8*)*
  %30 = call %struct.dentry* @debugfs_create_devm_seqfile(i32 %21, i8* %22, i32 %27, i32 (%struct.seq_file.0*, i8*)* %29)
  store %struct.dentry* %30, %struct.dentry** %7, align 8
  %31 = load %struct.dentry*, %struct.dentry** %7, align 8
  %32 = call i32 @PTR_ERR_OR_ZERO(%struct.dentry* %31)
  ret i32 %32
}

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local %struct.dentry* @debugfs_create_devm_seqfile(i32, i8*, i32, i32 (%struct.seq_file.0*, i8*)*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
