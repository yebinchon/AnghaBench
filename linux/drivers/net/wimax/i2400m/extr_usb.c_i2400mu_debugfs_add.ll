; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_usb.c_i2400mu_debugfs_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_usb.c_i2400mu_debugfs_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400mu = type { i32, i32, %struct.dentry*, %struct.TYPE_4__ }
%struct.dentry = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.dentry* }

@.str = private unnamed_addr constant [11 x i8] c"i2400m-usb\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"dl_\00", align 1
@usb = common dso_local global i32 0, align 4
@fw = common dso_local global i32 0, align 4
@notif = common dso_local global i32 0, align 4
@rx = common dso_local global i32 0, align 4
@tx = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"rx_size_auto_shrink\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"rx_size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2400mu*)* @i2400mu_debugfs_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2400mu_debugfs_add(%struct.i2400mu* %0) #0 {
  %2 = alloca %struct.i2400mu*, align 8
  %3 = alloca %struct.dentry*, align 8
  store %struct.i2400mu* %0, %struct.i2400mu** %2, align 8
  %4 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %5 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.dentry*, %struct.dentry** %7, align 8
  store %struct.dentry* %8, %struct.dentry** %3, align 8
  %9 = load %struct.dentry*, %struct.dentry** %3, align 8
  %10 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.dentry* %9)
  store %struct.dentry* %10, %struct.dentry** %3, align 8
  %11 = load %struct.dentry*, %struct.dentry** %3, align 8
  %12 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %13 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %12, i32 0, i32 2
  store %struct.dentry* %11, %struct.dentry** %13, align 8
  %14 = load i32, i32* @usb, align 4
  %15 = load %struct.dentry*, %struct.dentry** %3, align 8
  %16 = call i32 @d_level_register_debugfs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %14, %struct.dentry* %15)
  %17 = load i32, i32* @fw, align 4
  %18 = load %struct.dentry*, %struct.dentry** %3, align 8
  %19 = call i32 @d_level_register_debugfs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %17, %struct.dentry* %18)
  %20 = load i32, i32* @notif, align 4
  %21 = load %struct.dentry*, %struct.dentry** %3, align 8
  %22 = call i32 @d_level_register_debugfs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %20, %struct.dentry* %21)
  %23 = load i32, i32* @rx, align 4
  %24 = load %struct.dentry*, %struct.dentry** %3, align 8
  %25 = call i32 @d_level_register_debugfs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %23, %struct.dentry* %24)
  %26 = load i32, i32* @tx, align 4
  %27 = load %struct.dentry*, %struct.dentry** %3, align 8
  %28 = call i32 @d_level_register_debugfs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %26, %struct.dentry* %27)
  %29 = load %struct.dentry*, %struct.dentry** %3, align 8
  %30 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %31 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %30, i32 0, i32 1
  %32 = call i32 @debugfs_create_u8(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 384, %struct.dentry* %29, i32* %31)
  %33 = load %struct.dentry*, %struct.dentry** %3, align 8
  %34 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %35 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %34, i32 0, i32 0
  %36 = call i32 @debugfs_create_size_t(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 384, %struct.dentry* %33, i32* %35)
  ret void
}

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i32 @d_level_register_debugfs(i8*, i32, %struct.dentry*) #1

declare dso_local i32 @debugfs_create_u8(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @debugfs_create_size_t(i8*, i32, %struct.dentry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
