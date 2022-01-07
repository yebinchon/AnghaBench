; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda9887.c_dump_write_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda9887.c_dump_write_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda9887_priv* }
%struct.tda9887_priv = type { i32 }

@dump_write_message.sound = internal global [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [6 x i8] c"AM/TV\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"FM/radio\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"FM/TV\00", align 1
@dump_write_message.adjust = internal global [32 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0)], align 16
@.str.3 = private unnamed_addr constant [4 x i8] c"-16\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"-15\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"-14\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"-13\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"-12\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"-11\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"-10\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"-9\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"-8\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"-7\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"-6\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"-5\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"-4\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"-3\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"-2\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"+1\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"+2\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"+3\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"+4\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"+5\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"+6\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"+7\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"+8\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"+9\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"+10\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"+11\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"+12\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"+13\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"+14\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"+15\00", align 1
@dump_write_message.deemph = internal global [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0)], align 16
@.str.35 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"75\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"50\00", align 1
@dump_write_message.carrier = internal global [4 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0)], align 16
@.str.38 = private unnamed_addr constant [8 x i8] c"4.5 MHz\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"5.5 MHz\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"6.0 MHz\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"6.5 MHz / AM\00", align 1
@dump_write_message.vif = internal global [8 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i32 0, i32 0)], align 16
@.str.42 = private unnamed_addr constant [10 x i8] c"58.75 MHz\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"45.75 MHz\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"38.9 MHz\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"38.0 MHz\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"33.9 MHz\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"33.4 MHz\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"45.75 MHz + pin13\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"38.9 MHz + pin13\00", align 1
@dump_write_message.rif = internal global [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0)], align 16
@.str.50 = private unnamed_addr constant [7 x i8] c"44 MHz\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"52 MHz\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"write: byte B 0x%02x\0A\00", align 1
@.str.53 = private unnamed_addr constant [29 x i8] c"  B0   video mode      : %s\0A\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"video trap\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"sound trap\00", align 1
@.str.56 = private unnamed_addr constant [29 x i8] c"  B1   auto mute fm    : %s\0A\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.58 = private unnamed_addr constant [29 x i8] c"  B2   carrier mode    : %s\0A\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"QSS\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"Intercarrier\00", align 1
@.str.61 = private unnamed_addr constant [29 x i8] c"  B3-4 tv sound/radio  : %s\0A\00", align 1
@.str.62 = private unnamed_addr constant [29 x i8] c"  B5   force mute audio: %s\0A\00", align 1
@.str.63 = private unnamed_addr constant [29 x i8] c"  B6   output port 1   : %s\0A\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"high (inactive)\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"low (active)\00", align 1
@.str.66 = private unnamed_addr constant [29 x i8] c"  B7   output port 2   : %s\0A\00", align 1
@.str.67 = private unnamed_addr constant [22 x i8] c"write: byte C 0x%02x\0A\00", align 1
@.str.68 = private unnamed_addr constant [32 x i8] c"  C0-4 top adjustment  : %s dB\0A\00", align 1
@.str.69 = private unnamed_addr constant [29 x i8] c"  C5-6 de-emphasis     : %s\0A\00", align 1
@.str.70 = private unnamed_addr constant [29 x i8] c"  C7   audio gain      : %s\0A\00", align 1
@.str.71 = private unnamed_addr constant [22 x i8] c"write: byte E 0x%02x\0A\00", align 1
@.str.72 = private unnamed_addr constant [29 x i8] c"  E0-1 sound carrier   : %s\0A\00", align 1
@.str.73 = private unnamed_addr constant [28 x i8] c"  E6   l pll gating   : %s\0A\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"36\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"13\00", align 1
@.str.76 = private unnamed_addr constant [29 x i8] c"  E2-4 video if        : %s\0A\00", align 1
@.str.77 = private unnamed_addr constant [29 x i8] c"  E7   vif agc output  : %s\0A\00", align 1
@.str.78 = private unnamed_addr constant [13 x i8] c"fm-agc radio\00", align 1
@.str.79 = private unnamed_addr constant [14 x i8] c"sif-agc radio\00", align 1
@.str.80 = private unnamed_addr constant [21 x i8] c"fm radio carrier afc\00", align 1
@.str.81 = private unnamed_addr constant [29 x i8] c"  E5   tuner gain      : %s\0A\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"external\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"minimum\00", align 1
@.str.85 = private unnamed_addr constant [29 x i8] c"pin3 port, pin22 vif agc out\00", align 1
@.str.86 = private unnamed_addr constant [32 x i8] c"pin22 port, pin3 vif acg ext in\00", align 1
@.str.87 = private unnamed_addr constant [16 x i8] c"pin3+pin22 port\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"--\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*, i8*)* @dump_write_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_write_message(%struct.dvb_frontend* %0, i8* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tda9887_priv*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.tda9887_priv*, %struct.tda9887_priv** %7, align 8
  store %struct.tda9887_priv* %8, %struct.tda9887_priv** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 1
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.52, i64 0, i64 0), i32 %12)
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0)
  %22 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.53, i64 0, i64 0), i8* %21)
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 2
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0)
  %31 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.56, i64 0, i64 0), i8* %30)
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.60, i64 0, i64 0)
  %40 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.58, i64 0, i64 0), i8* %39)
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %44, 24
  %46 = ashr i32 %45, 3
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [4 x i8*], [4 x i8*]* @dump_write_message.sound, i64 0, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.61, i64 0, i64 0), i8* %49)
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = and i32 %54, 32
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0)
  %59 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.62, i64 0, i64 0), i8* %58)
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %63, 64
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.64, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.65, i64 0, i64 0)
  %68 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.63, i64 0, i64 0), i8* %67)
  %69 = load i8*, i8** %4, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = and i32 %72, 128
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.64, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.65, i64 0, i64 0)
  %77 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.66, i64 0, i64 0), i8* %76)
  %78 = load i8*, i8** %4, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 2
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.67, i64 0, i64 0), i32 %81)
  %83 = load i8*, i8** %4, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 2
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = and i32 %86, 31
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [32 x i8*], [32 x i8*]* @dump_write_message.adjust, i64 0, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.68, i64 0, i64 0), i8* %90)
  %92 = load i8*, i8** %4, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 2
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = and i32 %95, 96
  %97 = ashr i32 %96, 5
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [4 x i8*], [4 x i8*]* @dump_write_message.deemph, i64 0, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.69, i64 0, i64 0), i8* %100)
  %102 = load i8*, i8** %4, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 2
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = and i32 %105, 128
  %107 = icmp ne i32 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)
  %110 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.70, i64 0, i64 0), i8* %109)
  %111 = load i8*, i8** %4, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 3
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.71, i64 0, i64 0), i32 %114)
  %116 = load i8*, i8** %4, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 3
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = and i32 %119, 3
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [4 x i8*], [4 x i8*]* @dump_write_message.carrier, i64 0, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.72, i64 0, i64 0), i8* %123)
  %125 = load i8*, i8** %4, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 3
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = and i32 %128, 64
  %130 = icmp ne i32 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i64 0, i64 0)
  %133 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.73, i64 0, i64 0), i8* %132)
  %134 = load i8*, i8** %4, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 1
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = and i32 %137, 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %170

140:                                              ; preds = %2
  %141 = load i8*, i8** %4, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 3
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = and i32 %144, 12
  %146 = ashr i32 %145, 2
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [4 x i8*], [4 x i8*]* @dump_write_message.rif, i64 0, i64 %147
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.76, i64 0, i64 0), i8* %149)
  %151 = load i8*, i8** %4, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 3
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = and i32 %154, 128
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %140
  %158 = load i8*, i8** %4, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 3
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = and i32 %161, 16
  %163 = icmp ne i32 %162, 0
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.79, i64 0, i64 0)
  br label %167

166:                                              ; preds = %140
  br label %167

167:                                              ; preds = %166, %157
  %168 = phi i8* [ %165, %157 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.80, i64 0, i64 0), %166 ]
  %169 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.77, i64 0, i64 0), i8* %168)
  br label %227

170:                                              ; preds = %2
  %171 = load i8*, i8** %4, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 3
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = and i32 %174, 28
  %176 = ashr i32 %175, 2
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [8 x i8*], [8 x i8*]* @dump_write_message.vif, i64 0, i64 %177
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.76, i64 0, i64 0), i8* %179)
  %181 = load i8*, i8** %4, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 3
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i32
  %185 = and i32 %184, 128
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %196

187:                                              ; preds = %170
  %188 = load i8*, i8** %4, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 3
  %190 = load i8, i8* %189, align 1
  %191 = zext i8 %190 to i32
  %192 = and i32 %191, 32
  %193 = icmp ne i32 %192, 0
  %194 = zext i1 %193 to i64
  %195 = select i1 %193, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.82, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i64 0, i64 0)
  br label %205

196:                                              ; preds = %170
  %197 = load i8*, i8** %4, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 3
  %199 = load i8, i8* %198, align 1
  %200 = zext i8 %199 to i32
  %201 = and i32 %200, 32
  %202 = icmp ne i32 %201, 0
  %203 = zext i1 %202 to i64
  %204 = select i1 %202, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i64 0, i64 0)
  br label %205

205:                                              ; preds = %196, %187
  %206 = phi i8* [ %195, %187 ], [ %204, %196 ]
  %207 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.81, i64 0, i64 0), i8* %206)
  %208 = load i8*, i8** %4, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 3
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %210 to i32
  %212 = and i32 %211, 128
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %223

214:                                              ; preds = %205
  %215 = load i8*, i8** %4, align 8
  %216 = getelementptr inbounds i8, i8* %215, i64 3
  %217 = load i8, i8* %216, align 1
  %218 = zext i8 %217 to i32
  %219 = and i32 %218, 32
  %220 = icmp ne i32 %219, 0
  %221 = zext i1 %220 to i64
  %222 = select i1 %220, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.85, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.86, i64 0, i64 0)
  br label %224

223:                                              ; preds = %205
  br label %224

224:                                              ; preds = %223, %214
  %225 = phi i8* [ %222, %214 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.87, i64 0, i64 0), %223 ]
  %226 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.77, i64 0, i64 0), i8* %225)
  br label %227

227:                                              ; preds = %224, %167
  %228 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i64 0, i64 0))
  ret void
}

declare dso_local i32 @tuner_info(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
